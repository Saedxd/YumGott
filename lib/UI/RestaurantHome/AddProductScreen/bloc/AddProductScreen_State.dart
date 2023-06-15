library AddProductScreen_State;


import 'dart:io';
import 'package:Yumgott/models/RestaurantCategoryModel/CategoryModel.dart';
import 'package:built_value/built_value.dart';


part 'AddProductScreen_State.g.dart';

abstract class AddProductScreenState implements Built<AddProductScreenState, AddProductScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;

  CategoryModel? get AppetizersCateogry;
  CategoryModel? get ProductCategorys;
  double? get ContainerHeight;

  List<String>? get SelectedValues;
  List<int>? get SelectedValuesIDs;
  File? get PhotoFile;

  int? get ProductCateogryid;
  List<String>? get AllProductCategories;
  String? get SelectedProductCategoryValue;

  List<String>? get AppetizersIndexes;
  List<String>? get AppetizersCategorys;
  // String? get SelectedAppetizerCategory;
  // String? get SelectedAppetizer;


  List<List<String>>? get SelectedValues_Array;
  List<List<String>>? get AllAppetizers;
  AddProductScreenState._();


  factory AddProductScreenState([updates(AddProductScreenStateBuilder b)]) = _$AddProductScreenState;
  factory AddProductScreenState.initail() {
    return AddProductScreenState((b) => b
        ..error =""
        ..SelectedProductCategoryValue =""
        ..isLoading = false
        ..success = false
        ..PhotoFile = null
        ..AppetizersCateogry = null
        ..ProductCategorys = null
        ..ContainerHeight = 0.0
        ..ProductCateogryid = 0
        ..SelectedValues = []
        //..AppetizersIndexes = []
        ..SelectedValues_Array = []
        ..AllAppetizers = []
        ..SelectedValuesIDs = []
        ..AllProductCategories = []
      //  ..AppetizersCategorys = []



    );
  }




}
