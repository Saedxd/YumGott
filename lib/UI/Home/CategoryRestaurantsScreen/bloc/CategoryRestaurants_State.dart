library ContributeScreen_State;


import 'dart:io';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:built_value/built_value.dart';


part 'CategoryRestaurants_State.g.dart';

abstract class CategoryRestaurantsState implements Built<CategoryRestaurantsState, CategoryRestaurantsStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  int? get Index;


  List<User>? get FilteredRestaurants;
  List<User>? get UnFilteredRestaurants;
  // GetCategoryRestaurantsModel? get GetCategoryRestaurants;
  //


  CategoryRestaurantsState._();

  factory CategoryRestaurantsState([updates(CategoryRestaurantsStateBuilder b)]) = _$CategoryRestaurantsState;
  factory CategoryRestaurantsState.initail() {
    return CategoryRestaurantsState((b) => b
        ..error =""
      ..isLoading = false
      ..success = false
      ..Index = 0
      ..FilteredRestaurants = []
      ..UnFilteredRestaurants = []
       // ..GetCategoryRestaurants = null
    );
  }
}
