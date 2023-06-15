library userProfile_State;

import 'dart:convert';


import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'userProfile_State.g.dart';

abstract class UserProfileState implements Built<UserProfileState, UserProfileStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  //UserDataModel? get data;
  List<bool>? get SelectedTap;
  UserDataModel? get UserData;
  UserProfileState._();

  factory UserProfileState([updates(UserProfileStateBuilder b)]) = _$UserProfileState;

  factory UserProfileState.initail() {
    return UserProfileState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..UserData = null
      ..SelectedTap = [true,false,false]


    );
  }
}
