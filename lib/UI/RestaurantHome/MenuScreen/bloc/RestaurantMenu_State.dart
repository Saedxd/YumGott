library RestaurantMenu_State;


import 'dart:io';
import 'package:Yumgott/Core/Classes/Classes.dart';

import 'package:Yumgott/models/RestaurantCategoryModel/CategoryModel.dart';
import 'package:built_value/built_value.dart';


part 'RestaurantMenu_State.g.dart';

abstract class RestaurantMenuState implements Built<RestaurantMenuState, RestaurantMenuStateBuilder>   {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get MenuStatusLoading;
  bool? get success;
  List<bool>? get BranchtypeStatus;

  bool? get AppetizerFound;
  bool? get AppetizerNotEmpty;
  bool? get CategoryProductFound;

  CategoryModel? get Category;

  List<RestaurantMenuTile>? get MenuTileList;
  List<int>? get MenuTileItemsLength;
  List<bool>? get MenuTileStatus;

  List<bool>? get DialogStatus;


  RestaurantMenuState._();
  factory RestaurantMenuState([updates(RestaurantMenuStateBuilder b)]) = _$RestaurantMenuState;
  factory RestaurantMenuState.initail() {
    return RestaurantMenuState((b) => b
        ..error =""
      ..isLoading = false
      ..success = false
      ..MenuStatusLoading = false
      ..Category = null
      ..MenuTileStatus = List.filled(10000, false,growable: true)
      ..MenuTileItemsLength = List.filled(100000, 1,growable: true)
      ..MenuTileList = []
      ..BranchtypeStatus = [false,true]
      ..DialogStatus = List.filled(100000, false,growable: true)
    );
  }




}
