library LocationVidoes_State;


import 'dart:io';
import 'package:built_value/built_value.dart';


part 'LocationVidoes_State.g.dart';

abstract class LocationVidoesState implements Built<LocationVidoesState, LocationVidoesStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;

  int? get Index;



  LocationVidoesState._();

  factory LocationVidoesState([updates(LocationVidoesStateBuilder b)]) = _$LocationVidoesState;
  factory LocationVidoesState.initail() {
    return LocationVidoesState((b) => b
        ..error =""
      ..isLoading = false
      ..success = false
      ..Index = 0


    );
  }




}
