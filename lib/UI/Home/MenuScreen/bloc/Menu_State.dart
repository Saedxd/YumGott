library Menu_State;


import 'dart:io';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:built_value/built_value.dart';


part 'Menu_State.g.dart';

abstract class MenuState implements Built<MenuState, MenuStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  bool? get CateProductsisLoading;
  bool? get CateProductsuccess;
  List<bool>? get SelectedTap;
  int? get SelectedIndex;

  // GetMenuModel? get GetMenu;


  int? get Index;
  List<String>? get Tabs;
  List<List<Product>>? get ProductList;

  MenuState._();
  factory MenuState([updates(MenuStateBuilder b)]) = _$MenuState;
  factory MenuState.initail() {
    return MenuState((b) => b
        ..error =""
      ..isLoading = false
      ..success = false
      ..CateProductsisLoading = false
      ..CateProductsuccess = false
      ..Index = 0
      ..SelectedIndex = 0
      ..Tabs = []
      ..ProductList = []
    //  ..GetMenu = null
      ..SelectedTap = List.filled(100, false)



    );
  }




}
