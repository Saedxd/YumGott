library userProfile_Event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'userProfile_Event.g.dart';

abstract class UserProfileEvent {}



abstract class ChangeSelectedTab extends UserProfileEvent
    implements Built<ChangeSelectedTab,ChangeSelectedTabBuilder> {

  int?  get index;
  ChangeSelectedTab._();
  factory ChangeSelectedTab([updates(ChangeSelectedTabBuilder b)]) = _$ChangeSelectedTab;
}

abstract class GetProfile extends UserProfileEvent
    implements Built<GetProfile, GetProfileBuilder> {

  int? get User_ID;
  GetProfile._();
  factory GetProfile([Function(GetProfileBuilder b) updates]) = _$GetProfile;
}

