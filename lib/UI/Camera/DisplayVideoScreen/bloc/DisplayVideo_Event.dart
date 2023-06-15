library DisplayVideo_Event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'DisplayVideo_Event.g.dart';

abstract class DisplayVideoEvent {}


abstract class ChangeSelectedFilter extends DisplayVideoEvent
    implements Built<ChangeSelectedFilter,ChangeSelectedFilterBuilder> {

 int? get index;
 ChangeSelectedFilter._();
  factory ChangeSelectedFilter([updates(ChangeSelectedFilterBuilder b)]) = _$ChangeSelectedFilter;
}

abstract class ChangeRecordingStatus extends DisplayVideoEvent
    implements Built<ChangeRecordingStatus,ChangeRecordingStatusBuilder> {
bool? get Value;

 ChangeRecordingStatus._();
 factory ChangeRecordingStatus([updates(ChangeRecordingStatusBuilder b)]) = _$ChangeRecordingStatus;
}



abstract class UploadReel extends DisplayVideoEvent
    implements Built<UploadReel, UploadReelBuilder> {

 int? get meal_id;
 File? get video;
 UploadReel._();
 factory UploadReel([Function(UploadReelBuilder b) updates]) = _$UploadReel;
}
