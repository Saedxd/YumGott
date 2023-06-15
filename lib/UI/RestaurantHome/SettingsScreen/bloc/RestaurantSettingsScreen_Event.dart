// ignore_for_file: non_constant_identifier_names

library RestaurantSettingsScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'RestaurantSettingsScreen_Event.g.dart';

abstract class RestaurantSettingsScreenEvent{}


abstract class ChangeSelectedItem extends RestaurantSettingsScreenEvent
    implements Built<ChangeSelectedItem, ChangeSelectedItemBuilder> {

  String? get Country;
  ChangeSelectedItem._();
  factory ChangeSelectedItem([Function(ChangeSelectedItemBuilder b) updates]) = _$ChangeSelectedItem;
}

