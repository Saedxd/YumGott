// ignore_for_file: non_constant_identifier_names

library OrderScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'OrderScreen_Event.g.dart';

abstract class OrderScreenEvent{}


abstract class ChangeCheckBox1Status extends OrderScreenEvent
    implements Built<ChangeCheckBox1Status, ChangeCheckBox1StatusBuilder> {

  bool? get value;
  ChangeCheckBox1Status._();
  factory ChangeCheckBox1Status([Function(ChangeCheckBox1StatusBuilder b) updates]) = _$ChangeCheckBox1Status;
}

abstract class ChangeCheckBox2Status extends OrderScreenEvent
    implements Built<ChangeCheckBox2Status, ChangeCheckBox2StatusBuilder> {

  bool? get value;
  ChangeCheckBox2Status._();
  factory ChangeCheckBox2Status([Function(ChangeCheckBox2StatusBuilder b) updates]) = _$ChangeCheckBox2Status;
}


