// ignore_for_file: non_constant_identifier_names

library CategoryRestaurants_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'CategoryRestaurants_Event.g.dart';

abstract class CategoryRestaurantsEvent{}


abstract class GetCategoryRestaurants extends CategoryRestaurantsEvent
    implements Built<GetCategoryRestaurants, GetCategoryRestaurantsBuilder> {

  int? get Category_ID;
  GetCategoryRestaurants._();
  factory GetCategoryRestaurants([Function(GetCategoryRestaurantsBuilder b) updates]) = _$GetCategoryRestaurants;
}

