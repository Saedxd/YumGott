// ignore_for_file: non_constant_identifier_names
library EditRestaurantProfile_Event;


import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


part 'EditRestaurantProfile_Event.g.dart';

abstract class EditRestaurantProfileEvent{}


abstract class ChangePage extends EditRestaurantProfileEvent
    implements Built<ChangePage, ChangePageBuilder> {

  int? get index;
  ChangePage._();
  factory ChangePage([Function(ChangePageBuilder b) updates]) = _$ChangePage;
}


abstract class ChangeStartTime extends EditRestaurantProfileEvent
    implements Built<ChangeStartTime, ChangeStartTimeBuilder> {
  ChangeStartTime._();

  String? get Value;
  factory ChangeStartTime([updates(ChangeStartTimeBuilder b)]) = _$ChangeStartTime;
}

abstract class ChangeEndTime extends EditRestaurantProfileEvent
    implements Built<ChangeEndTime, ChangeEndTimeBuilder> {
  ChangeEndTime._();

  String? get Value;
  factory ChangeEndTime([updates(ChangeEndTimeBuilder b)]) = _$ChangeEndTime;
}

abstract class ChangeCoverImage extends EditRestaurantProfileEvent
    implements Built<ChangeCoverImage,ChangeCoverImageBuilder> {

  File? get Value;
  ChangeCoverImage._();
  factory ChangeCoverImage([updates(ChangeCoverImageBuilder b)]) = _$ChangeCoverImage;
}
abstract class ChangeProfileImage extends EditRestaurantProfileEvent
    implements Built<ChangeProfileImage,ChangeProfileImageBuilder> {

  File? get Value;
  ChangeProfileImage._();
  factory ChangeProfileImage([updates(ChangeProfileImageBuilder b)]) = _$ChangeProfileImage;
}

abstract class SwitchCheckBoxes extends EditRestaurantProfileEvent
    implements Built<SwitchCheckBoxes,SwitchCheckBoxesBuilder> {
  int?  get index;

  SwitchCheckBoxes._();
  factory SwitchCheckBoxes([updates(SwitchCheckBoxesBuilder b)]) = _$SwitchCheckBoxes;
}

//
// abstract class AddMarkers extends EditRestaurantProfileEvent
//     implements Built<AddMarkers,AddMarkersBuilder> {
//   Marker get marker;
//
//   AddMarkers._();
//   factory AddMarkers([updates(AddMarkersBuilder b)]) = _$AddMarkers;
// }
// abstract class ClearMarkers extends EditRestaurantProfileEvent
//     implements Built<ClearMarkers,ClearMarkersBuilder> {
//   ClearMarkers._();
//   factory ClearMarkers([updates(ClearMarkersBuilder b)]) = _$ClearMarkers;
// }