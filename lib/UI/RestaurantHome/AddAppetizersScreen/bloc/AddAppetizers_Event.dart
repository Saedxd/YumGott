// ignore_for_file: non_constant_identifier_names

library AddAppetizers_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'AddAppetizers_Event.g.dart';

abstract class AddAppetizersEvent{}


abstract class ChangeSelectedItem extends AddAppetizersEvent
    implements Built<ChangeSelectedItem, ChangeSelectedItemBuilder> {

  String? get Country;
  ChangeSelectedItem._();
  factory ChangeSelectedItem([Function(ChangeSelectedItemBuilder b) updates]) = _$ChangeSelectedItem;
}

abstract class CreateAppetizer extends AddAppetizersEvent
    implements Built<CreateAppetizer,CreateAppetizerBuilder> {

  int? get appetizer_id;
  String? get name;
  String? get info;
  double? get price;

  CreateAppetizer._();
  factory CreateAppetizer([updates(CreateAppetizerBuilder b)]) = _$CreateAppetizer;
}
abstract class GetAppetizers extends AddAppetizersEvent
    implements Built<GetAppetizers,GetAppetizersBuilder> {

  GetAppetizers._();
  factory GetAppetizers([updates(GetAppetizersBuilder b)]) = _$GetAppetizers;
}

abstract class ChangeSelectedImage extends AddAppetizersEvent
    implements Built<ChangeSelectedImage,ChangeSelectedImageBuilder> {

  File? get Value;
  ChangeSelectedImage._();
  factory ChangeSelectedImage([updates(ChangeSelectedImageBuilder b)]) = _$ChangeSelectedImage;
}
abstract class ChangeSelectedAppetizerCategory extends AddAppetizersEvent
    implements Built<ChangeSelectedAppetizerCategory, ChangeSelectedAppetizerCategoryBuilder> {

  String? get Value;
  ChangeSelectedAppetizerCategory._();
  factory ChangeSelectedAppetizerCategory([Function(ChangeSelectedAppetizerCategoryBuilder b) updates]) = _$ChangeSelectedAppetizerCategory;
}