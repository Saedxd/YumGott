library RestaurantProfile_State;

import 'dart:convert';


import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'RestaurantProfile_State.g.dart';

abstract class RestaurantProfileState implements Built<RestaurantProfileState, RestaurantProfileStateBuilder> {
  // fields go here


  String? get error;
  bool? get isLoading;
  bool? get success;
  bool? get ShowMenuWidget;

  bool? get Follow_ISloading;
  bool? get AlreadyFollowing;


  List<bool>? get SelectedTap;
  UserDataModel? get UserData;




  RestaurantProfileState._();

  factory RestaurantProfileState([updates(RestaurantProfileStateBuilder b)]) = _$RestaurantProfileState;

  factory RestaurantProfileState.initail() {
    return RestaurantProfileState((b) => b
      ..error = ""
      ..isLoading = false
      ..ShowMenuWidget = false
      ..Follow_ISloading = false
      ..AlreadyFollowing = false
      ..success = false
      ..UserData = null
      ..SelectedTap = [true,false,false]


    );
  }
}
