library Verification_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'Verification_state.g.dart';

abstract class VerificationState implements Built<VerificationState, VerificationStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  bool? get Error;


  // SendCodeModel? get ResendOtp;
  // ValidateOTPModel? get ValidateOTP;
  // VerifyUserModel? get VerifyUser;



  VerificationState._();

  factory VerificationState([updates(VerificationStateBuilder b)]) = _$VerificationState;

  factory VerificationState.initail() {
    return VerificationState((b) => b
      ..error = ""
      // ..ResendOtp = null
      // ..ValidateOTP = null
      // ..VerifyUser = null
      ..isLoading = false
    //  ..ResendOtp = null
      ..success = false
      ..Error = false




    );
  }
}

