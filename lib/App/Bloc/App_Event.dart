library App_Event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart' as m;
part 'App_Event.g.dart';

abstract class AppEvent {}


abstract class ChangeTheme extends AppEvent
    implements Built<ChangeTheme,ChangeThemeBuilder> {
 m.ThemeData? get theme;
 ChangeTheme._();
  factory ChangeTheme([updates(ChangeThemeBuilder b)]) = _$ChangeTheme;
}

