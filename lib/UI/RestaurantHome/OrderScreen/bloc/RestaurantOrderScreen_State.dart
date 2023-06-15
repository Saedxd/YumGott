library RestaurantOrderScreen_State;


import 'dart:io';
import 'package:built_value/built_value.dart';


part 'RestaurantOrderScreen_State.g.dart';

abstract class RestaurantOrderScreenState implements Built<RestaurantOrderScreenState, RestaurantOrderScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  bool? get Checkbox1Status;
  bool? get Checkbox2Status;

  RestaurantOrderScreenState._();

  factory RestaurantOrderScreenState([updates(RestaurantOrderScreenStateBuilder b)]) = _$RestaurantOrderScreenState;
  factory RestaurantOrderScreenState.initail() {
    return RestaurantOrderScreenState((b) => b
        ..error =""
        ..isLoading = false
        ..success = false
        ..Checkbox1Status = false
        ..Checkbox2Status = false


    );
  }




}
