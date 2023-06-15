import 'dart:convert';
import 'dart:io';

import 'package:Yumgott/models/GetAllProductsModel/GetAllProductsModel.dart';
import 'package:Yumgott/models/GetAllVidoesModel/AllVidoesListModel.dart';
import 'package:Yumgott/models/GetOneProductModel/GetOneProductModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/CategoryModel.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import '../http_helper/Ihttp_helper.dart';
import '../prefs_helper/iprefs_helper.dart';
import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;

  Repository(this._ihttpHelper, this._iprefHelper);


  @override
  Future<UserDataModel> Register(
      String Email,
      String Password,
      String name,
      String mobileNumber,
      String longitude,
      String latitude,
     )async{
    final Data = await _ihttpHelper.Register(Email, Password, name, mobileNumber, longitude, latitude);
    return Data;
  }

  @override
  Future<UserDataModel> Login(String Email,String Password)async{
    final Data = await _ihttpHelper.Login(Email, Password);
    return Data;
  }
  Future<CategoryModel> GetAllMenu()async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.GetAllMenu(auth);
    return Data;
  }
  Future<CategoryModel> GetAllProductCategory()async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.GetAllProductCategory(auth);
    return Data;
  }
  Future<CategoryModel> GetallAppetizerCategory()async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.GetallAppetizerCategory(auth);
    return Data;
  }
  Future<CategoryModel> CreateCategory(String name,int is_appetizers)async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.CreateCategory(auth, name, is_appetizers);
    return Data;
  }
  Future<CategoryModel> UpdateCategory(int ID,String name)async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.UpdateCategory(auth, ID, name);
    return Data;
  }
  Future<CategoryModel> DeleteCategory(int ID,)async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.DeleteCategory(ID, auth);
    return Data;
  }

  Future<UserDataModel> GetProfile()async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.GetProfile(auth);
    return Data;
  }

  Future<CategoryModel> CreateAppetizer(
      String name,
      String info,
      int appetizerId,
      double price,
      )async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.CreateAppetizer(auth, name, info, appetizerId, price);
    return Data;
  }

  Future<GetOneProductModel> CreateProduct(
      String name,
      String description,
      List<int> appetizerIds,
      int category_id,
      File photo,
      double discount,
      double price,
      )async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.CreateProduct(auth, name, description, appetizerIds, category_id, photo, discount, price);
    return Data;
  }


  Future<GetOneProductModel> UpdateProduct(
      String name,
      String description,
      List<int> appetizerIds,
      int category_id,
      int Product_ID,
      File photo,
      double discount,
      double price,
      )async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.UpdateProduct(auth, name, description, appetizerIds, category_id, Product_ID, photo, discount, price);
    return Data;
  }
  Future<GetOneProductModel> DeleteProduct(
      int Product_ID,
      )async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.DeleteProduct(auth, Product_ID);
    return Data;
  }

  Future<GetOneProductModel> GetProduct(
      int Product_ID,
      )async{
    // String auth = await _iprefHelper.getToken();
    // print(auth);
    final Data = await _ihttpHelper.GetProduct( Product_ID);
    return Data;
  }

  Future<AllVidoesListModel> CreateReel(
      int meal_id,
      File Video,
      )async{
    String auth = await _iprefHelper.getToken();
    print(auth);
    final Data = await _ihttpHelper.CreateReel(auth, meal_id, Video);
    return Data;
  }
  Future<GetAllProductsModel> GetAllProducts()async{
    final Data = await _ihttpHelper.GetAllProducts();
    return Data;
  }
  Future<AllVidoesListModel> GetReels()async{
    final Data = await _ihttpHelper.GetReels();
    return Data;
  }
  Future<UserDataModel> GetOtherUserProfile(int ID)async{
    final Data = await _ihttpHelper.GetOtherUserProfile(ID);
    return Data;
  }


}
