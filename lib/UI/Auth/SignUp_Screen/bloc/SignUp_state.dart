// ignore_for_file: file_names

library SignUp_state;

import 'dart:convert';
import 'dart:io';

import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:Yumgott/Core/Classes/Classes.dart';
part 'SignUp_state.g.dart';

abstract class SignUpState implements Built<SignUpState, SignUpStateBuilder> {

  String? get error;
  bool? get isLoading;
  bool? get success;
  UserDataModel? get data;



  SignUpState._();
  factory SignUpState([updates(SignUpStateBuilder b)]) = _$SignUpState;
  factory SignUpState.initail() {
    return SignUpState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..data = null

    );
  }
}
