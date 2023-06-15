//

//


library GetAllProductsModel;

import 'dart:convert';
//
// import 'package:Yumgott/models/GetAllProductsModel/ProductModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/ProductModel.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:Yumgott/models/serializer/serializer.dart';

part 'GetAllProductsModel.g.dart';

abstract class GetAllProductsModel
    implements Built<GetAllProductsModel, GetAllProductsModelBuilder> {

  BuiltList<ProductModel>? get data;


  GetAllProductsModel._();
  factory GetAllProductsModel(
      [void Function(GetAllProductsModelBuilder b)? updates]) =
  _$GetAllProductsModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(GetAllProductsModel.serializer, this));
  }

  static GetAllProductsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetAllProductsModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetAllProductsModel> get serializer =>
      _$getAllProductsModelSerializer;
}
