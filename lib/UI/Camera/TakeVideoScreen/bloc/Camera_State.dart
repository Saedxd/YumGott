library Camera_State;

import 'dart:convert';


import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'Camera_State.g.dart';

abstract class CameraState implements Built<CameraState, CameraStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  bool? get isRecording_Now;
  bool? get Check_IfInitilized;
 // UserDataModel? get data;

  int? get SelectedFilter_Index;

  CameraState._();

  factory CameraState([updates(CameraStateBuilder b)]) = _$CameraState;

  factory CameraState.initail() {
    return CameraState((b) => b
      ..error = ""
      ..isLoading = false
      ..Check_IfInitilized = false
      ..isRecording_Now = false
      ..success = false
    //  ..data = null
      ..SelectedFilter_Index = 0



    );
  }
}
