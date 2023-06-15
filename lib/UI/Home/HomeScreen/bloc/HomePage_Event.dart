// ignore_for_file: non_constant_identifier_names

library HomePage_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'HomePage_Event.g.dart';

abstract class HomePageEvent{}


abstract class ChangePage extends HomePageEvent
    implements Built<ChangePage, ChangePageBuilder> {

  int? get index;
  ChangePage._();
  factory ChangePage([Function(ChangePageBuilder b) updates]) = _$ChangePage;
}
abstract class GetReels extends HomePageEvent
    implements Built<GetReels,GetReelsBuilder> {


  GetReels._();
  factory GetReels([updates(GetReelsBuilder b)]) = _$GetReels;
}

abstract class FilterProducts extends HomePageEvent
    implements Built<FilterProducts, FilterProductsBuilder> {

  String? get Keyword;
  int? get Price_index;
  FilterProducts._();
  factory FilterProducts([Function(FilterProductsBuilder b) updates]) = _$FilterProducts;
}



abstract class GetAllProducts extends HomePageEvent
    implements Built<GetAllProducts, GetAllProductsBuilder> {

  GetAllProducts._();
  factory GetAllProducts([Function(GetAllProductsBuilder b) updates]) = _$GetAllProducts;
}

abstract class SendLocationTobackend extends HomePageEvent
    implements Built<SendLocationTobackend,SendLocationTobackendBuilder> {

  double? get Lat;
  double? get Lng;
  String? get Location;
  SendLocationTobackend._();
  factory SendLocationTobackend([updates(SendLocationTobackendBuilder b)]) = _$SendLocationTobackend;
}
abstract class ChangePolicyContainerApperiance extends HomePageEvent
    implements Built<ChangePolicyContainerApperiance, ChangePolicyContainerApperianceBuilder> {

  bool? get value;
  ChangePolicyContainerApperiance._();
  factory ChangePolicyContainerApperiance([Function(ChangePolicyContainerApperianceBuilder b) updates]) = _$ChangePolicyContainerApperiance;
}

abstract class SwitchSaveButton extends HomePageEvent
    implements Built<SwitchSaveButton,SwitchSaveButtonBuilder> {

  String? get ID;
  int? get index;
  SwitchSaveButton._();
  factory SwitchSaveButton([updates(SwitchSaveButtonBuilder b)]) = _$SwitchSaveButton;
}

abstract class SwitchLikeBUtton extends HomePageEvent
    implements Built<SwitchLikeBUtton, SwitchLikeBUttonBuilder> {

  int? get index;
  String? get important_id;
  String? get received_user;
  String? get MyUsername;
  SwitchLikeBUtton._();
  factory SwitchLikeBUtton([Function(SwitchLikeBUttonBuilder b) updates]) = _$SwitchLikeBUtton;
}



abstract class ChangeSelectedPriceValue extends HomePageEvent
    implements Built<ChangeSelectedPriceValue,ChangeSelectedPriceValueBuilder> {

  String? get value;
  int? get Price_index;
  ChangeSelectedPriceValue._();
  factory ChangeSelectedPriceValue([updates(ChangeSelectedPriceValueBuilder b)]) = _$ChangeSelectedPriceValue;
}


abstract class ChangeSelectedEvaluationValue extends HomePageEvent
    implements Built<ChangeSelectedEvaluationValue,ChangeSelectedEvaluationValueBuilder> {

  String? get value;
  int? get Price_index;
  ChangeSelectedEvaluationValue._();
  factory ChangeSelectedEvaluationValue([updates(ChangeSelectedEvaluationValueBuilder b)]) = _$ChangeSelectedEvaluationValue;
}


