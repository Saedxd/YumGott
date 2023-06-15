library SelectMedia_State;

import 'dart:convert';


import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'SelectMedia_State.g.dart';

abstract class SelectMediaState implements Built<SelectMediaState, SelectMediaStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  bool? get VideoChange_Isloading;


  String? get SelectedVideoPath;
 // UserDataModel? get data;
 //
 //  int? get SelectedFilter_Index;



  SelectMediaState._();

  factory SelectMediaState([updates(SelectMediaStateBuilder b)]) = _$SelectMediaState;

  factory SelectMediaState.initail() {
    return SelectMediaState((b) => b
      ..error = ""
      ..SelectedVideoPath = ""
      ..isLoading = false
      ..VideoChange_Isloading = false
      // ..Check_IfInitilized = false
      // ..isRecording_Now = false
      ..success = false
    //  ..SelectedFilter_Index = 0



    );
  }
}
