library SelectMedia_Event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'SelectMedia_Event.g.dart';

abstract class SelectMediaEvent {}



abstract class ChangeSelectedVideoPath extends SelectMediaEvent
    implements Built<ChangeSelectedVideoPath,ChangeSelectedVideoPathBuilder> {
String? get Value;

 ChangeSelectedVideoPath._();
 factory ChangeSelectedVideoPath([updates(ChangeSelectedVideoPathBuilder b)]) = _$ChangeSelectedVideoPath;
}

