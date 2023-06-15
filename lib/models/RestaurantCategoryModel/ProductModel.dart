
library ProductModel;

import 'dart:convert';

import 'package:Yumgott/models/RestaurantCategoryModel/CategoryListModel.dart';
import 'package:Yumgott/models/UserDataModel/DataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:Yumgott/models/serializer/serializer.dart';

part 'ProductModel.g.dart';

abstract class ProductModel
    implements Built<ProductModel, ProductModelBuilder> {


  int? get id;
  String? get user_id;
  String? get category_id;
  String? get name;
  String? get description;
  String? get price;
  String? get discount;
  String? get photo_main;
  String? get is_active;
  String? get created_at;
  String? get updated_at;
  DataModel? get user;
  CategoryListModel? get category;
  BuiltList<CategoryListModel>? get appetizers;






  ProductModel._();
  factory ProductModel(
      [void Function(ProductModelBuilder b)? updates]) =
  _$ProductModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ProductModel.serializer, this));
  }

  static ProductModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductModel.serializer, json.decode(jsonString));
  }

  static Serializer<ProductModel> get serializer =>
      _$productModelSerializer;
}
