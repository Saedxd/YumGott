// ignore_for_file: non_constant_identifier_names

library MapScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


part 'MapScreen_Event.g.dart';

abstract class MapScreenEvent{}


abstract class AddMarkers extends MapScreenEvent
    implements Built<AddMarkers,AddMarkersBuilder> {
  Marker? get marker;

  AddMarkers._();
  factory AddMarkers([updates(AddMarkersBuilder b)]) = _$AddMarkers;
}
abstract class ClearMarkers extends MapScreenEvent
    implements Built<ClearMarkers,ClearMarkersBuilder> {
  ClearMarkers._();
  factory ClearMarkers([updates(ClearMarkersBuilder b)]) = _$ClearMarkers;
}