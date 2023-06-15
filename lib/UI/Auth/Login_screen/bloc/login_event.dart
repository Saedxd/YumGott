library login_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_event.g.dart';

abstract class LOginEvent {}


abstract class PostLOgin extends LOginEvent
    implements Built<PostLOgin,PostLOginBuilder> {

 String?  get Email;
 String?  get password;
 String?  get fcmToken;

 PostLOgin._();

  factory PostLOgin([updates(PostLOginBuilder b)]) = _$PostLOgin;
}

abstract class ChangeIconStatus extends LOginEvent
    implements  Built<ChangeIconStatus,ChangeIconStatusBuilder> {

  ChangeIconStatus._();
  factory ChangeIconStatus([updates(ChangeIconStatusBuilder b)]) = _$ChangeIconStatus;
}
abstract class ChangeCheckBoxStatus extends LOginEvent
    implements  Built<ChangeCheckBoxStatus,ChangeCheckBoxStatusBuilder> {

  ChangeCheckBoxStatus._();
  factory ChangeCheckBoxStatus([updates(ChangeCheckBoxStatusBuilder b)]) = _$ChangeCheckBoxStatus;
}

abstract class SignInFacebook extends LOginEvent
    implements Built<SignInFacebook, SignInFacebookBuilder> {
  SignInFacebook._();
  String?  get fcmToken;
  String? get AccessToken;
  factory SignInFacebook([updates(SignInFacebookBuilder b)]) = _$SignInFacebook;
}
abstract class Switch_ForgotPasswordScreen extends LOginEvent
    implements Built<Switch_ForgotPasswordScreen, Switch_ForgotPasswordScreenBuilder> {
  Switch_ForgotPasswordScreen._();

  bool? get Value;
  factory Switch_ForgotPasswordScreen([updates(Switch_ForgotPasswordScreenBuilder b)]) = _$Switch_ForgotPasswordScreen;
}


abstract class SigninWithGoogle extends LOginEvent
    implements Built<SigninWithGoogle, SigninWithGoogleBuilder> {
  String? get Email;
  String? get Name;
  String? get image;
  String?  get fcmToken;
  SigninWithGoogle._();
  factory SigninWithGoogle([Function(SigninWithGoogleBuilder b) updates]) = _$SigninWithGoogle;
}

