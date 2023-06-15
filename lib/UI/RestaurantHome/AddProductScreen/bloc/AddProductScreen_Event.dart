// ignore_for_file: non_constant_identifier_names

library AddProductScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'AddProductScreen_Event.g.dart';

abstract class AddProductScreenEvent{}


abstract class ChangeAppetizersDropDownSize extends AddProductScreenEvent
    implements Built<ChangeAppetizersDropDownSize, ChangeAppetizersDropDownSizeBuilder> {

  int? get Length;
  ChangeAppetizersDropDownSize._();
  factory ChangeAppetizersDropDownSize([Function(ChangeAppetizersDropDownSizeBuilder b) updates]) = _$ChangeAppetizersDropDownSize;
}



abstract class GetAppetizers extends AddProductScreenEvent
    implements Built<GetAppetizers, GetAppetizersBuilder> {

  GetAppetizers._();
  factory GetAppetizers([Function(GetAppetizersBuilder b) updates]) = _$GetAppetizers;
}

abstract class AddSelectedValues extends AddProductScreenEvent
    implements Built<AddSelectedValues, AddSelectedValuesBuilder> {
  int? get index;
  List<String>? get SelectedList;
  AddSelectedValues._();
  factory AddSelectedValues([Function(AddSelectedValuesBuilder b) updates]) = _$AddSelectedValues;
}

abstract class ChangeSelectedImage extends AddProductScreenEvent
    implements Built<ChangeSelectedImage,ChangeSelectedImageBuilder> {

  File? get Value;
  ChangeSelectedImage._();
  factory ChangeSelectedImage([updates(ChangeSelectedImageBuilder b)]) = _$ChangeSelectedImage;
}
abstract class CreateProduct extends AddProductScreenEvent
    implements Built<CreateProduct,CreateProductBuilder> {


  String? get name;
  String? get description;
  double? get price;
  double? get discount;
  File? get photo;
  List<int>? get appetizerIds;
  int? get category_id;
  CreateProduct._();
  factory CreateProduct([updates(CreateProductBuilder b)]) = _$CreateProduct;
}
abstract class GetProductCateogry extends AddProductScreenEvent
    implements Built<GetProductCateogry,GetProductCateogryBuilder> {



  GetProductCateogry._();
  factory GetProductCateogry([updates(GetProductCateogryBuilder b)]) = _$GetProductCateogry;
}
abstract class ChangeAppetizersProductsinList extends AddProductScreenEvent
    implements Built<ChangeAppetizersProductsinList,ChangeAppetizersProductsinListBuilder> {

  String? get Value;
  ChangeAppetizersProductsinList._();
  factory ChangeAppetizersProductsinList([updates(ChangeAppetizersProductsinListBuilder b)]) = _$ChangeAppetizersProductsinList;
}

abstract class ChangeSelectedBranch extends AddProductScreenEvent
    implements Built<ChangeSelectedBranch, ChangeSelectedBranchBuilder> {

  String? get Value;
  ChangeSelectedBranch._();
  factory ChangeSelectedBranch([Function(ChangeSelectedBranchBuilder b) updates]) = _$ChangeSelectedBranch;
}

abstract class EmptyList extends AddProductScreenEvent
    implements Built<EmptyList,EmptyListBuilder> {

  EmptyList._();
  factory EmptyList([updates(EmptyListBuilder b)]) = _$EmptyList;
}