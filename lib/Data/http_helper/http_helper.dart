import 'dart:convert';
import 'dart:developer';
import 'package:Yumgott/Core/ExceptionHandling/Exceptions.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/models/GetAllProductsModel/GetAllProductsModel.dart';
import 'package:Yumgott/models/GetAllVidoesModel/AllVidoesListModel.dart';
import 'package:Yumgott/models/GetOneProductModel/GetOneProductModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/CategoryModel.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:Yumgott/models/serializer/serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http_status_code/http_status_code.dart';


import 'Ihttp_helper.dart';
import 'dart:io';
import 'dart:core';

class HttpHelper implements IHttpHelper {
  Dio? _dio;
  Dio? _dio2;
  var cookieJar = CookieJar();

  HttpHelper(this._dio, this._dio2) {
    _dio!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
    _dio!.interceptors.add(CookieManager(cookieJar));

    _dio2!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
  }



  @override
  Future<UserDataModel> Register(
      String Email,
      String Password,
      String name,
      String mobileNumber,
      String longitude,
      String latitude,
      )async{
    try{

     //  var fileName = photo.path.split('/').last;
     //    print(fileName);

          final formData ={
            "name": name,
            "email": Email,
            "mobile_number": mobileNumber,
            "password": Password,
            "is_restaurant": 1,
            "fcm_token": await FirebaseMessaging.instance.getToken(),
        //    "photo_path": await MultipartFile.fromFile(photo.path,filename: fileName),
            "latitude":latitude,
            "longitude":longitude,
          };


     Response  response = await _dio!
          .post('/v1/auth/register',data: formData, options: Options(headers: {
        "Accept" :"application/json"
      }));


      if (response.statusCode == StatusCode.OK){
        final statusMessage = getStatusMessage(response.statusCode!);
        print(statusMessage);
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }

    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                UserDataModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(UserDataModel),
                    ],
                  ),
                ],
              )) as UserDataModel;
          return baseResponse;

          case DioExceptionType.unknown:
        print("Gotit");
        UserDataModel Model = UserDataModel((b) => b
          ..message = "Something Went Wrong, please check your connection and try again"
        );
        return Model;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
        CustomException Ex = CustomException();
        UserDataModel Model = UserDataModel((b) => b
          ..message =  Ex.indExceptionType(e)
        );
        return Model;



      }

    }
  }


  @override
  Future<UserDataModel> Login(String email,String Password)async{
    try {
      final formData = {
        "email":email,
        "password":Password,
        "fcm_token":await FirebaseMessaging.instance.getToken(),
      };

      final response = await _dio!
          .post('/v1/auth/login',data: formData, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == StatusCode.OK){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                UserDataModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(UserDataModel),
                    ],
                  ),
                ],
              )) as UserDataModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");
          UserDataModel Model = UserDataModel((b) => b
            ..message = "Something Went Wrong, please check your connection and try again"
          );
          return Model;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();
          UserDataModel Model = UserDataModel((b) => b
            ..message =  Ex.indExceptionType(e)
          );
          return Model;



      }

    }
  }


  @override
  Future<CategoryModel> GetAllMenu(String Token)async{
    try {
      final response = await _dio!
          .get('/v1/categories', options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer ${Token}"
      }));


      if (response.statusCode == StatusCode.OK){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              CategoryModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(CategoryModel),
                  ],
                ),
              ],
            )) as CategoryModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                CategoryModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(CategoryModel),
                    ],
                  ),
                ],
              )) as CategoryModel;
          return baseResponse;
        case DioExceptionType.unknown:
          print("Gotit");
          // CategoryModel Model = CategoryModel((b) => b
          //   ..message = "Something Went Wrong, please check your connection and try again"
          // );
          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();
          // CategoryModel Model = CategoryModel((b) => b
          //   ..message =  Ex.indExceptionType(e)
          // );
          throw  Ex.indExceptionType(e);
      }
    }
  }


  @override
  Future<CategoryModel> GetAllProductCategory(String Token)async{
    try {
      final response = await _dio!
          .get('/v1/categories/getmain', options: Options(headers: {
            "Accept" :"application/json",
            "Authorization":"Bearer $Token"
          }));

      if (response.statusCode == StatusCode.OK){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              CategoryModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(CategoryModel),
                  ],
                ),
              ],
            )) as CategoryModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                CategoryModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(CategoryModel),
                    ],
                  ),
                ],
              )) as CategoryModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");
          CategoryModel Model = CategoryModel((b) => b
            ..message = "Something Went Wrong, please check your connection and try again"
          );
          return Model;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();
          CategoryModel Model = CategoryModel((b) => b
            ..message =  Ex.indExceptionType(e)
          );
          return Model;



      }

    }
  }


  @override
  Future<CategoryModel> GetallAppetizerCategory(String Token)async{
    try {

      final response = await _dio!
          .get('/v1/categories/getappetizers', options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer $Token"
      }));

      if (response.statusCode == StatusCode.OK){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              CategoryModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(CategoryModel),
                  ],
                ),
              ],
            )) as CategoryModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                CategoryModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(CategoryModel),
                    ],
                  ),
                ],
              )) as CategoryModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");
          CategoryModel Model = CategoryModel((b) => b
            ..message = "Something Went Wrong, please check your connection and try again"
          );
          return Model;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();
          CategoryModel Model = CategoryModel((b) => b
            ..message =  Ex.indExceptionType(e)
          );
          return Model;



      }

    }
  }


  @override
  Future<CategoryModel> CreateCategory(String Token,String name,int is_appetizers)async{
    try {
      final formData = {
        "name" : name,
        "is_appetizers" : is_appetizers,
      };
      final response = await _dio!
          .post('/v1/categories/store',data: formData, options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED ){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              CategoryModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(CategoryModel),
                  ],
                ),
              ],
            )) as CategoryModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                CategoryModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(CategoryModel),
                    ],
                  ),
                ],
              )) as CategoryModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");
          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }


  @override
  Future<CategoryModel> UpdateCategory(String Token,int ID,String name)async{
    try {
      final formData = {
        "name" : name,
      };
      final response = await _dio!
          .post('/v1/categories/update/${ID}',data: formData, options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer $Token"
      }));

      if (response.statusCode == StatusCode.OK){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              CategoryModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(CategoryModel),
                  ],
                ),
              ],
            )) as CategoryModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                CategoryModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(CategoryModel),
                    ],
                  ),
                ],
              )) as CategoryModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");
          throw "Something Went Wrong, please check your connection and try again";

        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();
          throw  Ex.indExceptionType(e);



      }

    }
  }


  @override
  Future<CategoryModel> DeleteCategory(int ID,String Token)async{
    try {

      final response = await _dio!
          .post('/v1/categories/destroy/$ID', options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer $Token"
      }));

      if (response.statusCode == StatusCode.OK){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              CategoryModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(CategoryModel),
                  ],
                ),
              ],
            )) as CategoryModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                CategoryModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(CategoryModel),
                    ],
                  ),
                ],
              )) as CategoryModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");
          throw "Something Went Wrong, please check your connection and try again";

        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }


  @override
  Future<UserDataModel> GetProfile(String Token)async{
    try {

      final response = await _dio!
          .get('/v1/auth/user', options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer $Token"
      }));

      if (response.statusCode == StatusCode.OK){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      print(e.type);
      switch(e.type){
        case DioExceptionType.badResponse:
          print(e.response!.data.toString().contains("Unauthenticated."));
          UserDataModel Model = UserDataModel((b) => b
            ..message = "Unauthenticated"
          );
          return Model;
        case DioExceptionType.unknown:
          print("Gotit");
          UserDataModel Model = UserDataModel((b) => b
            ..message = "Something Went Wrong, please check your connection and try again"
          );
          return Model;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();
          UserDataModel Model = UserDataModel((b) => b
            ..message =  Ex.indExceptionType(e)
          );
          return Model;



      }

    }
  }
  @override
  Future<CategoryModel> CreateAppetizer(
      String Token,
      String name,
      String info,
      int appetizerId,
      double price,
      )async{
    try {


      final formData = {
        "name" : name,
        "info" : info,
        "price" : price,
        "appetizer_id" : appetizerId,
      };

      final response = await _dio!
          .post('/v1/categories/add-for-appetizers',data: formData, options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED ){
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              CategoryModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(CategoryModel),
                  ],
                ),
              ],
            )) as CategoryModel;
        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                CategoryModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(CategoryModel),
                    ],
                  ),
                ],
              )) as CategoryModel;
          return baseResponse;
        case DioExceptionType.unknown:
          print("Gotit");
          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();
          throw  Ex.indExceptionType(e);
      }
    }
  }

  @override
  Future<GetOneProductModel> CreateProduct(
      String Token,
      String name,
      String description,
      List<int> appetizerIds,
      int category_id,
      File photo,
      double discount,
      double price,
      ) async{
    try {
      var fileName = photo.path.split('/').last;
      print(fileName);

      final formData = FormData.fromMap({
        "name" : name,
        "description" : description,
        "price" : price,
        "discount" : discount,
        "photo" : await MultipartFile.fromFile(photo.path,filename: fileName),
        "appetizerIds" : appetizerIds,
        "category_id" : category_id,
      });

      final response = await _dio!
          .post('/v1/meals',data: formData, options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED ){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetOneProductModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetOneProductModel),
                  ],
                ),
              ],
            )) as GetOneProductModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                GetOneProductModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(GetOneProductModel),
                    ],
                  ),
                ],
              )) as GetOneProductModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");

          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }

  @override
  Future<GetOneProductModel> DeleteProduct(
      String Token,
      int Product_ID,
      )async{
    try {

      final response = await _dio!
          .delete('/v1/meals/${Product_ID}', options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED ){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetOneProductModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetOneProductModel),
                  ],
                ),
              ],
            )) as GetOneProductModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                GetOneProductModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(GetOneProductModel),
                    ],
                  ),
                ],
              )) as GetOneProductModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");

          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }

  @override
  Future<GetOneProductModel> GetProduct(
      int Product_ID,
      )async{
    try {

      final response = await _dio!
          .get('/v1/meals/${Product_ID}', options: Options(headers: {
        "Accept" :"application/json",
       // "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED ){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetOneProductModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetOneProductModel),
                  ],
                ),
              ],
            )) as GetOneProductModel;

        return baseResponse;

      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }

    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                GetOneProductModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(GetOneProductModel),
                    ],
                  ),
                ],
              )) as GetOneProductModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");

          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }


  @override
  Future<GetOneProductModel> UpdateProduct(
      String Token,
      String name,
      String description,
      List<int> appetizerIds,
      int category_id,
      int Product_ID,
      File photo,
      double discount,
      double price,
      )async{
    try {
      var fileName = photo.path.split('/').last;
      print(fileName);

      final formData = FormData.fromMap({
        "name" : name,
        "description" : description,
        "price" : price,
        "discount" : discount,
        "photo" : await MultipartFile.fromFile(photo.path,filename: fileName),
        "appetizerIds" : appetizerIds,
        "category_id" : category_id,
      });

      final response = await _dio!
          .put('/v1/meals/${Product_ID}',data: formData, options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED ){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetOneProductModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetOneProductModel),
                  ],
                ),
              ],
            )) as GetOneProductModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                GetOneProductModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(GetOneProductModel),
                    ],
                  ),
                ],
              )) as GetOneProductModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");

          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }


  @override
  Future<GetAllProductsModel> GetAllProducts(
      )async{
    try {

      final response = await _dio!
          .get('/v1/meals', options: Options(headers: {
        "Accept" :"application/json",
      //  "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED ){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetAllProductsModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetAllProductsModel),
                  ],
                ),
              ],
            )) as GetAllProductsModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                GetAllProductsModel,
                [
                  FullType(
                    BuiltList,
                    [

                      FullType(GetAllProductsModel),
                    ],
                  ),
                ],
              )) as GetAllProductsModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");

          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }

  @override
  Future<AllVidoesListModel> CreateReel(
      String Token,
      int meal_id,
      File Video,
      )async{
    try {
      var fileName = Video.path.split('/').last;
      print(fileName);

      final formData = FormData.fromMap({
        "meal_id" : meal_id,
      //  "Video" : await MultipartFile.fromFile(Video.path,filename: fileName),
      });

      final response = await _dio!
          .post('/v1/reels',data: formData, options: Options(headers: {
        "Accept" :"application/json",
        "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED ){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              AllVidoesListModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(AllVidoesListModel),
                  ],
                ),
              ],
            )) as AllVidoesListModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                AllVidoesListModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(AllVidoesListModel),
                    ],
                  ),
                ],
              )) as AllVidoesListModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");

          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }

  @override
  Future<AllVidoesListModel> GetReels() async {
    try {

      final response = await _dio!
          .get('/v1/reels', options: Options(headers: {
        "Accept" :"application/json",
        //  "Authorization":"Bearer ${Token}"
      }));

      if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              AllVidoesListModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(AllVidoesListModel),
                  ],
                ),
              ],
            )) as AllVidoesListModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      switch(e.type){
        case DioExceptionType.badResponse:
          baseResponse = serializers.deserialize(json.decode(e.response!.data),
              specifiedType: const FullType(
                AllVidoesListModel,
                [
                  FullType(
                    BuiltList,
                    [
                      FullType(AllVidoesListModel),
                    ],
                  ),
                ],
              )) as AllVidoesListModel;
          return baseResponse;

        case DioExceptionType.unknown:
          print("Gotit");

          throw "Something Went Wrong, please check your connection and try again";
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();

          throw  Ex.indExceptionType(e);



      }

    }
  }

  @override
  Future<UserDataModel> GetOtherUserProfile(int ID)async{
    try {

      final response = await _dio!
          .get('/v1/auth/user', options: Options(headers: {
        "Accept" :"application/json",
   //     "Authorization":"Bearer $Token"
      }));

      if (response.statusCode == StatusCode.OK){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on DioException catch (e) {
      var baseResponse;
      print(e.type);
      switch(e.type){
        case DioExceptionType.badResponse:
          print(e.response!.data.toString().contains("Unauthenticated."));
          UserDataModel Model = UserDataModel((b) => b
            ..message = "Unauthenticated"
          );
          return Model;
        case DioExceptionType.unknown:
          print("Gotit");
          UserDataModel Model = UserDataModel((b) => b
            ..message = "Something Went Wrong, please check your connection and try again"
          );
          return Model;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          CustomException Ex = CustomException();
          UserDataModel Model = UserDataModel((b) => b
            ..message =  Ex.indExceptionType(e)
          );
          return Model;



      }

    }
  }
  //
  // @override
  // Future<AllVidoesListModel> GetProfi() async {
  //   try {
  //
  //     final response = await _dio!
  //         .get('/v1/reels', options: Options(headers: {
  //       "Accept" :"application/json",
  //       //  "Authorization":"Bearer ${Token}"
  //     }));
  //
  //     if (response.statusCode == StatusCode.OK ||response.statusCode == StatusCode.CREATED){
  //
  //       final baseResponse = serializers.deserialize(json.decode(response.data),
  //           specifiedType: const FullType(
  //             AllVidoesListModel,
  //             [
  //               FullType(
  //                 BuiltList,
  //                 [
  //                   FullType(AllVidoesListModel),
  //                 ],
  //               ),
  //             ],
  //           )) as AllVidoesListModel;
  //
  //       return baseResponse;
  //     }else{
  //       print("NetworkException 1st");
  //       throw NetworkException();
  //     }
  //   } on DioException catch (e) {
  //     var baseResponse;
  //     switch(e.type){
  //       case DioExceptionType.badResponse:
  //         baseResponse = serializers.deserialize(json.decode(e.response!.data),
  //             specifiedType: const FullType(
  //               AllVidoesListModel,
  //               [
  //                 FullType(
  //                   BuiltList,
  //                   [
  //                     FullType(AllVidoesListModel),
  //                   ],
  //                 ),
  //               ],
  //             )) as AllVidoesListModel;
  //         return baseResponse;
  //
  //       case DioExceptionType.unknown:
  //         print("Gotit");
  //
  //         throw "Something Went Wrong, please check your connection and try again";
  //       case DioExceptionType.connectionTimeout:
  //       case DioExceptionType.sendTimeout:
  //       case DioExceptionType.receiveTimeout:
  //       case DioExceptionType.badCertificate:
  //       case DioExceptionType.cancel:
  //       case DioExceptionType.connectionError:
  //         CustomException Ex = CustomException();
  //
  //         throw  Ex.indExceptionType(e);
  //
  //
  //
  //     }
  //
  //   }
  // }
  //



}

class NetworkException implements Exception {}
///Code 	Status Code 	Status Message
// 100 	CONTINUE 	Continue
// 101 	SWITCHING_PROTOCOLS 	Switching Protocols
// 102 	PROCESSING 	Processing
// StatusCode.OK 	OK 	OK
// 201 	CREATED 	Created
// 202 	ACCEPTED 	Accepted
// 203 	NON_AUTHORITATIVE_INFORMATION 	Non Authoritative Information
// 204 	NO_CONTENT 	No Content
// 205 	RESET_CONTENT 	Reset Content
// 206 	PARTIAL_CONTENT 	Partial Content
// 207 	MULTI_STATUS 	Multi-Status
// 300 	MULTIPLE_CHOICES 	Multiple Choices
// 301 	MOVED_PERMANENTLY 	Moved Permanently
// 302 	MOVED_TEMPORARILY 	Moved Temporarily
// 303 	SEE_OTHER 	See Other
// 304 	NOT_MODIFIED 	Not Modified
// 305 	USE_PROXY 	Use Proxy
// 307 	TEMPORARY_REDIRECT 	Temporary Redirect
// 308 	PERMANENT_REDIRECT 	Permanent Redirect
// 400 	BAD_REQUEST 	Bad Request
// 401 	UNAUTHORIZED 	Unauthorized
// 402 	PAYMENT_REQUIRED 	Payment Required
// 403 	FORBIDDEN 	Forbidden
// 404 	NOT_FOUND 	Not Found
// 405 	METHOD_NOT_ALLOWED 	Method Not Allowed
// 406 	NOT_ACCEPTABLE 	Not Acceptable
// 407 	PROXY_AUTHENTICATION_REQUIRED 	Proxy Authentication Required
// 408 	REQUEST_TIMEOUT 	Request Timeout
// 409 	CONFLICT 	Conflict
// 410 	GONE 	Gone
// 411 	LENGTH_REQUIRED 	Length Required
// 412 	PRECONDITION_FAILED 	Precondition Failed
// 413 	REQUEST_TOO_LONG 	Request Entity Too Large
// 414 	REQUEST_URI_TOO_LONG 	Request-URI Too Long
// 415 	UNSUPPORTED_MEDIA_TYPE 	Unsupported Media Type
// 416 	REQUESTED_RANGE_NOT_SATISFIABLE 	Requested Range Not Satisfiable
// 417 	EXPECTATION_FAILED 	Expectation Failed
// 418 	IM_A_TEAPOT 	I'm a teapot
// 419 	INSUFFICIENT_SPACE_ON_RESOURCE 	Insufficient Space on Resource
// 420 	METHOD_FAILURE 	Method Failure
// 422 	UNPROCESSABLE_ENTITY 	Unprocessable Entity
// 423 	LOCKED 	Locked
// 424 	FAILED_DEPENDENCY 	Failed Dependency
// 428 	PRECONDITION_REQUIRED 	Precondition Required
// 429 	TOO_MANY_REQUESTS 	Too Many Requests
// 431 	REQUEST_HEADER_FIELDS_TOO_LARGE 	Request Header Fields Too Large
// 451 	UNAVAILABLE_FOR_LEGAL_REASONS 	Unavailable For Legal Reasons
// 500 	INTERNAL_SERVER_ERROR 	Internal Server Error
// 501 	NOT_IMPLEMENTED 	Not Implemented
// 502 	BAD_GATEWAY 	Bad Gateway
// 503 	SERVICE_UNAVAILABLE 	Service Unavailable
// 504 	GATEWAY_TIMEOUT 	Gateway Timeout
// 505 	HTTP_VERSION_NOT_SUPPORTED 	HTTP Version Not Supported
// 507 	INSUFFICIENT_STORAGE 	Insufficient Storage
// 511 	NETWORK_AUTHENTICATION_REQUIRED 	Network Authentication Required