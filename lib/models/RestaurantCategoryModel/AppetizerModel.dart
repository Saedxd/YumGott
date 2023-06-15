//
library AppetizerModel;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:Yumgott/models/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'AppetizerModel.g.dart';

abstract class AppetizerModel
    implements Built<AppetizerModel, AppetizerModelBuilder> {


  String? get appetizer_id;
  String? get name;
  String? get info;
  String? get price;
  int? get id;
  String? get created_at;
  String? get updated_at;



  AppetizerModel._();
  factory AppetizerModel(
      [void Function(AppetizerModelBuilder b)? updates]) =
  _$AppetizerModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(AppetizerModel.serializer, this));
  }

  static AppetizerModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppetizerModel.serializer, json.decode(jsonString));
  }

  static Serializer<AppetizerModel> get serializer =>
      _$appetizerModelSerializer;
}
