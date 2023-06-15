library Camera_Event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Camera_Event.g.dart';

abstract class CameraEvent {}



abstract class ChangeRecordingStatus extends CameraEvent
    implements Built<ChangeRecordingStatus,ChangeRecordingStatusBuilder> {
bool? get Value;

 ChangeRecordingStatus._();
 factory ChangeRecordingStatus([updates(ChangeRecordingStatusBuilder b)]) = _$ChangeRecordingStatus;
}

abstract class ChangeSelectedFilter extends CameraEvent
    implements Built<ChangeSelectedFilter,ChangeSelectedFilterBuilder> {

 int? get index;
 ChangeSelectedFilter._();
 factory ChangeSelectedFilter([updates(ChangeSelectedFilterBuilder b)]) = _$ChangeSelectedFilter;
}
abstract class ChangeToCheckIfInitilized extends CameraEvent
    implements Built<ChangeToCheckIfInitilized, ChangeToCheckIfInitilizedBuilder> {


 ChangeToCheckIfInitilized._();
 factory ChangeToCheckIfInitilized([Function(ChangeToCheckIfInitilizedBuilder b) updates]) = _$ChangeToCheckIfInitilized;
}