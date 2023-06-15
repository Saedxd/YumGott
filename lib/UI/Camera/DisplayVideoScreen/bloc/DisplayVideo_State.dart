library DisplayVideo_State;

import 'dart:convert';


import 'package:Yumgott/models/GetAllVidoesModel/AllVidoesListModel.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'DisplayVideo_State.g.dart';

abstract class DisplayVidoeState implements Built<DisplayVidoeState, DisplayVidoeStateBuilder> {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  bool? get isRecording_Now;

 AllVidoesListModel? get data;


  int? get SelectedFilter_Index;


  DisplayVidoeState._();

  factory DisplayVidoeState([updates(DisplayVidoeStateBuilder b)]) = _$DisplayVidoeState;

  factory DisplayVidoeState.initail() {
    return DisplayVidoeState((b) => b
      ..error = ""
      ..isLoading = false
      ..isRecording_Now = false
      ..success = false
       ..data = null
      ..SelectedFilter_Index = 0



    );
  }
}
