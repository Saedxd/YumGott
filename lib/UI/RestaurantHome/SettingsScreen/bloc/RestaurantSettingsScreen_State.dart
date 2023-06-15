library RestaurantSettingsScreen_State;


import 'dart:io';
import 'package:built_value/built_value.dart';


part 'RestaurantSettingsScreen_State.g.dart';

abstract class RestaurantSettingsScreenState implements Built<RestaurantSettingsScreenState, RestaurantSettingsScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;




  RestaurantSettingsScreenState._();

  factory RestaurantSettingsScreenState([updates(RestaurantSettingsScreenStateBuilder b)]) = _$RestaurantSettingsScreenState;
  factory RestaurantSettingsScreenState.initail() {
    return RestaurantSettingsScreenState((b) => b
        ..error =""
        ..isLoading = false
        ..success = false


    );
  }




}
