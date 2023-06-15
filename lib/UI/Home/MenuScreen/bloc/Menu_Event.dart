// ignore_for_file: non_constant_identifier_names

library Menu_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'Menu_Event.g.dart';

abstract class MenuEvent{}


abstract class ChangePage extends MenuEvent
    implements Built<ChangePage, ChangePageBuilder> {

  int? get index;
  ChangePage._();
  factory ChangePage([Function(ChangePageBuilder b) updates]) = _$ChangePage;
}


abstract class ChangeSelectedTab extends MenuEvent
    implements Built<ChangeSelectedTab,ChangeSelectedTabBuilder> {
  int?  get index;

  ChangeSelectedTab._();
  factory ChangeSelectedTab([updates(ChangeSelectedTabBuilder b)]) = _$ChangeSelectedTab;
}

abstract class GetMenu extends MenuEvent
    implements Built<GetMenu,GetMenuBuilder> {

  int? get Restaurant_ID;
  GetMenu._();
  factory GetMenu([updates(GetMenuBuilder b)]) = _$GetMenu;
}

