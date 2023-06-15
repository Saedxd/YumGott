library AddAppetizers_State;


import 'dart:io';
import 'package:Yumgott/models/RestaurantCategoryModel/CategoryModel.dart';
import 'package:built_value/built_value.dart';


part 'AddAppetizers_State.g.dart';

abstract class AddAppetizersState implements Built<AddAppetizersState, AddAppetizersStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  File? get PhotoFile;

  String? get Selected_AppetizerCategory;
  List<String>? get AllAppetizersCategories;
  CategoryModel? get Create_appetizer;
  CategoryModel? get GetAppetizers;
  AddAppetizersState._();

  factory AddAppetizersState([updates(AddAppetizersStateBuilder b)]) = _$AddAppetizersState;
  factory AddAppetizersState.initail() {
    return AddAppetizersState((b) => b
        ..error =""
        ..Selected_AppetizerCategory =""
        ..isLoading = false
        ..success = false
       ..PhotoFile = null
       ..Create_appetizer = null
       ..GetAppetizers = null
       ..AllAppetizersCategories = []


    );
  }




}
