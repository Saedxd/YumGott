// ignore_for_file: non_constant_identifier_names

library LocationVidoes_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'LocationVidoes_Event.g.dart';

abstract class LocationVidoesEvent{}


abstract class ChangePage extends LocationVidoesEvent
    implements Built<ChangePage, ChangePageBuilder> {

  int? get index;
  ChangePage._();
  factory ChangePage([Function(ChangePageBuilder b) updates]) = _$ChangePage;
}


