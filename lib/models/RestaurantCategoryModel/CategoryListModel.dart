//
library CategoryListModel;

import 'dart:convert';

import 'package:Yumgott/models/RestaurantCategoryModel/AppetizerModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/ProductModel.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:Yumgott/models/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'CategoryListModel.g.dart';

abstract class CategoryListModel
    implements Built<CategoryListModel, CategoryListModelBuilder> {



  String? get is_appetizers;
  String? get created_at;
  String? get name;
  int? get id;
  BuiltList<ProductModel>? get meals;
  BuiltList<AppetizerModel>? get appetizers;


  CategoryListModel._();
  factory CategoryListModel(
      [void Function(CategoryListModelBuilder b)? updates]) =
  _$CategoryListModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CategoryListModel.serializer, this));
  }

  static CategoryListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryListModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryListModel> get serializer =>
      _$categoryListModelSerializer;
}
