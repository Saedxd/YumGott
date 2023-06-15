library RestaurantHomePage_State;


import 'dart:io';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/models/GetAllProductsModel/GetAllProductsModel.dart';
import 'package:Yumgott/models/GetAllVidoesModel/AllVidoesListModel.dart';
import 'package:built_value/built_value.dart';


part 'RestaurantHomePage_State.g.dart';


abstract class RestaurantHomePageState implements Built<RestaurantHomePageState, RestaurantHomePageStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get Like_isLoading;
  bool? get Save_isLoading;
  bool? get success;
  bool? get GetProductsSucess;
  bool? get GetProductsIsLoading;
  bool? get Searchsuccess;
  int? get Index;
  bool? get ShowPolicyContainer;
  List<int>? get start_Range_Price;
  List<int>? get End_Range_Price;
  String? get SelectedPriceValue;
  String? get SelectedEvaluationValue;


  List<bool>? get Posts_Likes;
  List<int>? get Posts_Likes_Count;

  List<Video>? get AllPosts;

  //
  // AllVidoesListModel? get AllVidoesList;
  // GetAllProductsModel? get GetAllProducts;
  List<Product>? get Filtered_Products;
  List<Product>? get UnFiltered_Products;

  RestaurantHomePageState._();

  factory RestaurantHomePageState([updates(RestaurantHomePageStateBuilder b)]) = _$RestaurantHomePageState;
  factory RestaurantHomePageState.initail() {
    return RestaurantHomePageState((b) => b
      ..error =""
      ..SelectedEvaluationValue =""
      ..SelectedPriceValue =""
      ..isLoading = false
      ..Like_isLoading = false
      ..ShowPolicyContainer = false
      ..Save_isLoading = false
      ..GetProductsSucess = false
      ..GetProductsIsLoading = false
      ..Searchsuccess = true
      ..success = false
      ..Index = 0
      // ..GetAllProducts = null
      // ..AllVidoesList = null
      ..Filtered_Products = []
      ..UnFiltered_Products = []
      ..Posts_Likes = []
      ..Posts_Likes_Count = []
      ..AllPosts = []
      ..start_Range_Price =  [1,10,20,30,50,60,70,80,90]
      ..End_Range_Price = [10,20,30,40,60,70,80,90,100]
    );
  }




}
