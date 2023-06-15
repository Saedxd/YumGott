library hisUserProfile_Event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hisUserProfile_Event.g.dart';

abstract class HisUserProfileEvent {}



abstract class ChangeSelectedTab extends HisUserProfileEvent
    implements Built<ChangeSelectedTab,ChangeSelectedTabBuilder> {
  int?  get index;

  ChangeSelectedTab._();
  factory ChangeSelectedTab([updates(ChangeSelectedTabBuilder b)]) = _$ChangeSelectedTab;
}

abstract class GetProfile extends HisUserProfileEvent
    implements Built<GetProfile, GetProfileBuilder> {

  int? get User_ID;
  GetProfile._();
  factory GetProfile([Function(GetProfileBuilder b) updates]) = _$GetProfile;
}
abstract class FollowUser extends HisUserProfileEvent
    implements Built<FollowUser,FollowUserBuilder> {
  String? get important_id;
  String? get received_user;
  String? get MyUsername;

  FollowUser._();
  factory FollowUser([updates(FollowUserBuilder b)]) = _$FollowUser;
}

