library Settings_State;


import 'dart:io';
import 'package:built_value/built_value.dart';


part 'Settings_State.g.dart';

abstract class SettingsScreenState implements Built<SettingsScreenState, SettingsScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;


  SettingsScreenState._();

  factory SettingsScreenState([updates(SettingsScreenStateBuilder b)]) = _$SettingsScreenState;
  factory SettingsScreenState.initail() {
    return SettingsScreenState((b) => b
        ..error =""
        ..isLoading = false
        ..success = false


    );
  }




}
