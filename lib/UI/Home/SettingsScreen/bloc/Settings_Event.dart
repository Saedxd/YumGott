// ignore_for_file: non_constant_identifier_names

library Settings_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'Settings_Event.g.dart';

abstract class SettingsScreenEvent{}


abstract class ChangeSelectedItem extends SettingsScreenEvent
    implements Built<ChangeSelectedItem, ChangeSelectedItemBuilder> {

  String? get Country;
  ChangeSelectedItem._();
  factory ChangeSelectedItem([Function(ChangeSelectedItemBuilder b) updates]) = _$ChangeSelectedItem;
}

