library EditRestaurantProfile_State;

import 'dart:io';
import 'package:Yumgott/Core/Classes/Classes.dart';

import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


part 'EditRestaurantProfile_State.g.dart';

abstract class EditRestaurantProfileState implements Built<EditRestaurantProfileState, EditRestaurantProfileStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get CheckBoxisLoading;
  bool? get success;
  File? get Cover_PhotoFile;
  File? get Profile_PhotoFile;


  String? get StartTime;
  String? get EndTime;

 //  bool? get NewMarker_isLoading;
 //  Set<Marker>? get New_marker2;
 // // Set<Circle>? get NewBubble_circle;


  List<bool>? get CheckBoxStatusesList;


  EditRestaurantProfileState._();
  factory EditRestaurantProfileState([updates(EditRestaurantProfileStateBuilder b)]) = _$EditRestaurantProfileState;
  factory EditRestaurantProfileState.initail() {
    return EditRestaurantProfileState((b) => b
        ..error =""
        ..StartTime ="00:00 AM"
        ..EndTime ="00:00 AM"
      ..isLoading = false
      ..success = false
    //  ..NewMarker_isLoading = false
      ..CheckBoxisLoading = false
      ..CheckBoxStatusesList = List.filled(15, false)
   //   ..New_marker2 ={}


    );
  }




}
