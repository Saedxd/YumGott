// ignore_for_file: non_constant_identifier_names

library RestaurantOrderScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'RestaurantOrderScreen_Event.g.dart';

abstract class RestaurantOrderScreenEvent{}


abstract class ChangeCheckBox1Status extends RestaurantOrderScreenEvent
    implements Built<ChangeCheckBox1Status, ChangeCheckBox1StatusBuilder> {

  bool? get value;
  ChangeCheckBox1Status._();
  factory ChangeCheckBox1Status([Function(ChangeCheckBox1StatusBuilder b) updates]) = _$ChangeCheckBox1Status;
}

