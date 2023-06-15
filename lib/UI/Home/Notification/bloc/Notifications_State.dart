library Notifications_State;

import 'dart:convert';

import 'package:Yumgott/Core/Classes/Classes.dart';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Notifications_State.g.dart';

abstract class NotificationsState implements Built<NotificationsState, NotificationsStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;

  //GetNotificationsModel? get GetNotification;
  List<notification>? get Notificationss;




  NotificationsState._();

  factory NotificationsState([updates(NotificationsStateBuilder b)]) = _$NotificationsState;

  factory NotificationsState.initail() {
    return NotificationsState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      // ..GetNotification = null
      ..Notificationss = []
    );
  }
}
