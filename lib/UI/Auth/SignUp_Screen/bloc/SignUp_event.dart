// ignore_for_file: file_names

library SignUp_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'SignUp_event.g.dart';

abstract class SignUpEvent {}


abstract class SignUpWithGoogle extends SignUpEvent
    implements Built<SignUpWithGoogle, SignUpWithGoogleBuilder> {
  SignUpWithGoogle._();

  String? get Email;
  String? get Name;
  String? get image;
  factory SignUpWithGoogle([updates(SignUpWithGoogleBuilder b)]) = _$SignUpWithGoogle;
}

abstract class SignUpWithFacebook extends SignUpEvent
    implements Built<SignUpWithFacebook, SignUpWithFacebookBuilder> {


  String? get AccessToken;
  SignUpWithFacebook._();
  factory SignUpWithFacebook([Function(SignUpWithFacebookBuilder b) updates]) = _$SignUpWithFacebook;
}

abstract class PostSignUp extends SignUpEvent
    implements Built<PostSignUp,PostSignUpBuilder> {
    String? get Email;
    String? get password;
    String? get username;
    String? get PhoneNUmber;
    File? get Image;



  PostSignUp._();
  factory PostSignUp([updates(PostSignUpBuilder b)]) = _$PostSignUp;
}

