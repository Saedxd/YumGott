library hisUserProfile_State;

import 'dart:convert';


import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'hisUserProfile_State.g.dart';

abstract class HisUserProfileState implements Built<HisUserProfileState, HisUserProfileStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;


  bool? get Follow_ISloading;
  bool? get AlreadyFollowing;
  //UserDataModel? get data;
  List<bool>? get SelectedTap;
  UserDataModel? get UserData;
  HisUserProfileState._();

  factory HisUserProfileState([updates(HisUserProfileStateBuilder b)]) = _$HisUserProfileState;

  factory HisUserProfileState.initail() {
    return HisUserProfileState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..AlreadyFollowing = false
      ..Follow_ISloading = false

      ..UserData = null
      ..SelectedTap = [true,false,false]


    );
  }
}
