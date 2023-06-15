library RestaurantsScreen_State;


import 'dart:io';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_Event.dart';
import 'package:built_value/built_value.dart';


part 'RestaurantsScreen_State.g.dart';

abstract class RestaurantsScreenState implements Built<RestaurantsScreenState, RestaurantsScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get Searchsuccess;
  bool? get GetRestaurantSuccess;
  bool? get GetRestaurantisLoading;
  bool? get GetCategorysuccess;
  bool? get GetCategoryisloading;
  bool? get success;

  List<User>? get FilteredRestaurants;
  List<User>? get UnFilteredRestaurants;

  String? get SelectedCity;



  // GetAllRestaurantModel? get GetAllRestaurant;
  // GetCategoriesModel? get GetCategories;

  RestaurantsScreenState._();


  factory RestaurantsScreenState([updates(RestaurantsScreenStateBuilder b)]) = _$RestaurantsScreenState;
  factory RestaurantsScreenState.initail() {
    return RestaurantsScreenState((b) => b
        ..error =""
        ..SelectedCity =""
        ..isLoading = false
        ..Searchsuccess = false
        ..UnFilteredRestaurants = []
        ..FilteredRestaurants = []
        ..success = false
        ..GetCategoryisloading = false
        ..GetCategorysuccess = false
        ..GetRestaurantisLoading = false
        ..GetRestaurantSuccess = false
        // ..GetAllRestaurant = null
        // ..GetCategories = null

    );
  }
}


