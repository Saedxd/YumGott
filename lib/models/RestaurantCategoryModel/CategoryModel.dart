library CategoryModel;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/CategoryListModel.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:Yumgott/models/serializer/serializer.dart';


part 'CategoryModel.g.dart';


abstract class CategoryModel
    implements Built<CategoryModel, CategoryModelBuilder> {


  String? get title;
  String? get message;
  int? get code;
  BuiltList<CategoryListModel>? get data;
  int? get id;

  CategoryModel._();
  factory CategoryModel(
      [void Function(CategoryModelBuilder b)? updates]) =
  _$CategoryModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CategoryModel.serializer, this));
  }

  static CategoryModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryModel> get serializer =>
      _$categoryModelSerializer;
}
