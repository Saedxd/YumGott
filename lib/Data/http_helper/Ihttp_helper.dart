// ignore_for_file: file_names

import 'dart:io';

import 'package:Yumgott/models/GetAllProductsModel/GetAllProductsModel.dart';
import 'package:Yumgott/models/GetAllVidoesModel/AllVidoesListModel.dart';
import 'package:Yumgott/models/GetOneProductModel/GetOneProductModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/CategoryModel.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';



abstract class IHttpHelper {
  Future<UserDataModel> Register(
      String Email,
      String Password,
      String name,
      String mobileNumber,
      String longitude,
      String latitude,
      );
  Future<UserDataModel> Login(String Email,String Password);
  Future<CategoryModel> GetAllMenu(String Token);
  Future<CategoryModel> GetAllProductCategory(String Token);
  Future<CategoryModel> GetallAppetizerCategory(String Token);
  Future<CategoryModel> CreateCategory(String Token,String name,int is_appetizers);
  Future<CategoryModel> UpdateCategory(String Token,int ID,String name);
  Future<CategoryModel> DeleteCategory(int ID,String Token);
  Future<UserDataModel> GetProfile(String Token);
  Future<GetOneProductModel> CreateProduct(
      String Token,
      String name,
      String description,
      List<int> appetizerIds,
      int category_id,
      File photo,
      double discount,
      double price,
      );
  Future<CategoryModel> CreateAppetizer(
      String Token,
      String name,
      String info,
      int appetizerId,
      double price,
      );
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
      );
  Future<GetOneProductModel> DeleteProduct(
      String Token,
      int Product_ID,
      );

  Future<GetOneProductModel> GetProduct(
      //String Token,
      int Product_ID,
      );
  Future<GetAllProductsModel> GetAllProducts(
      // String Token,
      );
  Future<AllVidoesListModel> CreateReel(
      String Token,
      int meal_id,
      File Video,
      );
  Future<AllVidoesListModel> GetReels();
  Future<UserDataModel> GetOtherUserProfile(int ID);
  // Future<UserDataModel> LoginWithFacebook(String accessToken);
  // Future<UserDataModel> SignUpWithFacebook(String accessToken);
  // Future<UserDataModel> LoginWithGoogle(String Email,String image,String name);
  // Future<UserDataModel> SignUpWithGoogle(String Email,String image,String name);
  // Future<SendCodeModel> SendCode(String email);
  // Future<GetAllUsersModel> GetAllUsers();
  // Future<UserDataModel> GetProfile(String Token,String auth);
  // Future<GetAllRestaurantModel> GetAllRestaurants(int limit,int page);
  // Future<GetCategoriesModel> GetAllCategories();
  // Future<GetCategoryRestaurantsModel> GetCategoryRestaurants(String id);
  // Future<GetCategoryProductsModel> GetCategoryProducts(String Category_ID);
  // Future<GetAllProductsModel> GetAllProducts(int Page,int limit);
  // Future<AllVidoesListModel> GetShortVidoes(int page,int limit);
  // Future<GetMenuModel> GetRestaurantMenu(String Restaurant_ID);
  // Future<GetoneVideoModel> LikeShortVideo(
  //     String important_id,
  //     String Auth,
  //     String received_user,
  //     String MyUsername,);
  // Future<GetMenuModel> UpdateUser(User user,String tOKEn,String id);
  // Future<GetNotificationsModel> GetNotifications(String Auth);
  // Future<GetallTranscationsModel> GetTransactions(String Auth);
  // Future<GetVideoCommentsModel> GetVideoComments(
  //     String Video_ID,
  //     String Auth,
  //     );
  // Future<SendCommentModel> SendCommentOnVideo(
  //     String Video_ID,
  //     String Auth,
  //     String comment,
  //     String product,
  //     String user,
  //     );
}


