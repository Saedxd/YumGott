// ignore_for_file: non_constant_identifier_names

library RestaurantMenu_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'RestaurantMenu_Event.g.dart';

abstract class RestaurantMenuEvent{}


abstract class ChangeSelectedType extends RestaurantMenuEvent
    implements Built<ChangeSelectedType, ChangeSelectedTypeBuilder> {

  int? get index;
  ChangeSelectedType._();
  factory ChangeSelectedType([Function(ChangeSelectedTypeBuilder b) updates]) = _$ChangeSelectedType;
}


abstract class ChangeSelectedTab extends RestaurantMenuEvent
    implements Built<ChangeSelectedTab,ChangeSelectedTabBuilder> {
  int?  get index;

  ChangeSelectedTab._();
  factory ChangeSelectedTab([updates(ChangeSelectedTabBuilder b)]) = _$ChangeSelectedTab;
}

abstract class GetMenu extends RestaurantMenuEvent
    implements Built<GetMenu,GetMenuBuilder> {

  int? get Restaurant_ID;
  GetMenu._();
  factory GetMenu([updates(GetMenuBuilder b)]) = _$GetMenu;
}


abstract class SwitchApperanceStatus extends RestaurantMenuEvent
    implements Built<SwitchApperanceStatus, SwitchApperanceStatusBuilder> {

  int? get Index;
  SwitchApperanceStatus._();
  factory SwitchApperanceStatus([Function(SwitchApperanceStatusBuilder b) updates]) = _$SwitchApperanceStatus;
}


abstract class CreateBranch extends RestaurantMenuEvent
    implements Built<CreateBranch,CreateBranchBuilder> {

  String? get name;
  int? get is_appetizer;
  CreateBranch._();
  factory CreateBranch([updates(CreateBranchBuilder b)]) = _$CreateBranch;
}

abstract class CloseDialog extends RestaurantMenuEvent
    implements Built<CloseDialog, CloseDialogBuilder> {

  CloseDialog._();
  factory CloseDialog([Function(CloseDialogBuilder b) updates]) = _$CloseDialog;
}

abstract class ChangeDialogStatus extends RestaurantMenuEvent
    implements Built<ChangeDialogStatus, ChangeDialogStatusBuilder> {

  int? get index;
  ChangeDialogStatus._();
  factory ChangeDialogStatus([Function(ChangeDialogStatusBuilder b) updates]) = _$ChangeDialogStatus;
}
abstract class UpdateBranch extends RestaurantMenuEvent
    implements Built<UpdateBranch,UpdateBranchBuilder> {

  String? get name;
  int? get ID;
  int? get index;
  UpdateBranch._();
  factory UpdateBranch([updates(UpdateBranchBuilder b)]) = _$UpdateBranch;
}

abstract class DeleteBranch extends RestaurantMenuEvent
    implements Built<DeleteBranch,DeleteBranchBuilder> {

  
  int? get ID;
  int? get index;
  DeleteBranch._();
  factory DeleteBranch([updates(DeleteBranchBuilder b)]) = _$DeleteBranch;
}