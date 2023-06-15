library login_state;

import 'dart:convert';


import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'login_state.g.dart';

abstract class loginState implements Built<loginState, loginStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  UserDataModel? get data;

  loginState._();

  factory loginState([updates(loginStateBuilder b)]) = _$loginState;

  factory loginState.initail() {
    return loginState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..data = null



    );
  }
}
