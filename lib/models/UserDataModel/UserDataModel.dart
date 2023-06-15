//
//
library UserDataModel;

import 'dart:convert';

import 'package:Yumgott/models/UserDataModel/DataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:Yumgott/models/serializer/serializer.dart';

part 'UserDataModel.g.dart';

abstract class UserDataModel
    implements Built<UserDataModel, UserDataModelBuilder> {

  int? get code;
  String? get access_token;
  String? get token_type;
  String? get message;
  DataModel? get data;


  UserDataModel._();

  factory UserDataModel(
      [void Function(UserDataModelBuilder b)? updates]) =
  _$UserDataModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(UserDataModel.serializer, this));
  }

  static UserDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserDataModel> get serializer =>
      _$userDataModelSerializer;
}
