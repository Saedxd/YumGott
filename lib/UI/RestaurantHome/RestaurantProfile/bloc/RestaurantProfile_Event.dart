library RestaurantProfile_Event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'RestaurantProfile_Event.g.dart';

abstract class RestaurantProfileEvent {}


abstract class ChangeSelectedTab extends RestaurantProfileEvent
    implements Built<ChangeSelectedTab,ChangeSelectedTabBuilder> {
  int?  get index;

  ChangeSelectedTab._();
  factory ChangeSelectedTab([updates(ChangeSelectedTabBuilder b)]) = _$ChangeSelectedTab;
}

abstract class GetProfile extends RestaurantProfileEvent
    implements Built<GetProfile, GetProfileBuilder> {

  int? get Restaurant_ID;
  GetProfile._();
  factory GetProfile([Function(GetProfileBuilder b) updates]) = _$GetProfile;
}

abstract class ShowMenuWidget extends RestaurantProfileEvent
    implements Built<ShowMenuWidget, ShowMenuWidgetBuilder> {

  ShowMenuWidget._();
  factory ShowMenuWidget([Function(ShowMenuWidgetBuilder b) updates]) = _$ShowMenuWidget;
}

abstract class FollowRestaurant extends RestaurantProfileEvent
    implements Built<FollowRestaurant,FollowRestaurantBuilder> {
  String? get important_id;
  String? get received_user;
  String? get MyUsername;

  FollowRestaurant._();
  factory FollowRestaurant([updates(FollowRestaurantBuilder b)]) = _$FollowRestaurant;
}
