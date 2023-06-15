library GetOneProductModel;

import 'dart:convert';
import 'package:Yumgott/models/RestaurantCategoryModel/ProductModel.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:Yumgott/models/serializer/serializer.dart';


part 'GetOneProductModel.g.dart';

abstract class GetOneProductModel
    implements Built<GetOneProductModel, GetOneProductModelBuilder> {


  ProductModel? get data;
  String? get message;
  int? get code;

  GetOneProductModel._();
  factory GetOneProductModel(
      [void Function(GetOneProductModelBuilder b)? updates]) =
  _$GetOneProductModel;


  String toJson() {
    return json.encode(
        serializers.serializeWith(GetOneProductModel.serializer, this));
  }

  static GetOneProductModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetOneProductModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetOneProductModel> get serializer =>
      _$getOneProductModelSerializer;
}
