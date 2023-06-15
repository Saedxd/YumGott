// ignore_for_file: non_constant_identifier_names

library ShortVideos_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'ShortVideos_Event.g.dart';

abstract class ShortVideosEvent{}




abstract class LikeVideo extends ShortVideosEvent
    implements Built<LikeVideo, LikeVideoBuilder> {
String? get important_id;
String? get received_user_ID;
String? get MyUsername;

  LikeVideo._();
  factory LikeVideo([Function(LikeVideoBuilder b) updates]) = _$LikeVideo;
}

abstract class FollowRestaurant extends ShortVideosEvent
    implements Built<FollowRestaurant, FollowRestaurantBuilder> {
  String? get important_id;
  String? get received_user;
  String? get MyUsername;

  FollowRestaurant._();
  factory FollowRestaurant([Function(FollowRestaurantBuilder b) updates]) = _$FollowRestaurant;
}


abstract class AddComment extends ShortVideosEvent
    implements Built<AddComment, AddCommentBuilder> {

//rating
String? get comment;
String? get post;
String? get product;
String? get user;
  AddComment._();
  factory AddComment([Function(AddCommentBuilder b) updates]) = _$AddComment;
}


abstract class GetComments extends ShortVideosEvent
    implements Built<GetComments, GetCommentsBuilder> {

  String? get Vidoe_ID;
  GetComments._();
  factory GetComments([Function(GetCommentsBuilder b) updates]) = _$GetComments;
}

abstract class LikeComment extends ShortVideosEvent
    implements Built<LikeComment, LikeCommentBuilder> {

  LikeComment._();
  factory LikeComment([Function(LikeCommentBuilder b) updates]) = _$LikeComment;
}


abstract class SaveVideo extends ShortVideosEvent
    implements Built<SaveVideo, SaveVideoBuilder> {

  String? get Vidoe_ID;
  SaveVideo._();
  factory SaveVideo([Function(SaveVideoBuilder b) updates]) = _$SaveVideo;
}


abstract class ChangeKeyBaordStatus extends ShortVideosEvent
    implements Built<ChangeKeyBaordStatus, ChangeKeyBaordStatusBuilder> {

  bool? get value;

  ChangeKeyBaordStatus._();
  factory ChangeKeyBaordStatus([Function(ChangeKeyBaordStatusBuilder b) updates]) = _$ChangeKeyBaordStatus;
}

