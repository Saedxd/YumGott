library OrderScreen_State;


import 'dart:io';
import 'package:built_value/built_value.dart';


part 'OrderScreen_State.g.dart';

abstract class OrderScreenState implements Built<OrderScreenState, OrderScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  bool? get Checkbox1Status;
  bool? get Checkbox2Status;

  OrderScreenState._();

  factory OrderScreenState([updates(OrderScreenStateBuilder b)]) = _$OrderScreenState;
  factory OrderScreenState.initail() {
    return OrderScreenState((b) => b
        ..error =""
        ..isLoading = false
        ..success = false
        ..Checkbox1Status = false
        ..Checkbox2Status = false


    );
  }




}
