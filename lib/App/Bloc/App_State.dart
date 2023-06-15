library App_State;

import 'dart:convert';


import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart' as m;


part 'App_State.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  m.ThemeData? get theme;
  // OtpForResetPasswordModel? get ResetPassword;


  AppState._();

  factory AppState([updates(AppStateBuilder b)]) = _$AppState;

  factory AppState.initail() {
    return AppState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..theme = MyTheme().darkTheme



    );
  }
}
