
library DataModel;

import 'dart:convert';

import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:Yumgott/models/serializer/serializer.dart';

part 'DataModel.g.dart';

abstract class DataModel
    implements Built<DataModel, DataModelBuilder> {

  int? get id;
  String? get name;
  String? get email;
  String? get mobile_number;
  String? get fcm_token;
  String? get photo;
  String? get latitude;
  String? get longitude;
  String? get is_restaurant;
  String? get email_verified_at;
  String? get created_at;
  String? get updated_at;
  String? get Token;


  DataModel._();
  factory DataModel(
      [void Function(DataModelBuilder b)? updates]) =
  _$DataModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(DataModel.serializer, this));
  }

  static DataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataModel.serializer, json.decode(jsonString));
  }

  static Serializer<DataModel> get serializer =>
      _$dataModelSerializer;
}
