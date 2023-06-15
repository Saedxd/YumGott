library MapScreen_State;


import 'dart:io';
import 'package:Yumgott/Core/Classes/Classes.dart';

import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


part 'MapScreen_State.g.dart';

abstract class MapScreenState implements Built<MapScreenState, MapScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;

  bool? get NewMarker_isLoading;
  Set<Marker>? get New_marker2;
  // Set<Circle>? get NewBubble_circle;




  MapScreenState._();
  factory MapScreenState([updates(MapScreenStateBuilder b)]) = _$MapScreenState;
  factory MapScreenState.initail() {
    return MapScreenState((b) => b
        ..error =""
      ..isLoading = false
      ..success = false
      ..NewMarker_isLoading = false
      ..New_marker2 ={}


    );
  }




}
