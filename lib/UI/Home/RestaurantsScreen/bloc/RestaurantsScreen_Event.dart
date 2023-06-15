// ignore_for_file: non_constant_identifier_names

library RestaurantsScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'RestaurantsScreen_Event.g.dart';

abstract class RestaurantsScreenEvent{}


abstract class GetAllRestaurants extends RestaurantsScreenEvent
    implements Built<GetAllRestaurants, GetAllRestaurantsBuilder> {

  GetAllRestaurants._();
  factory GetAllRestaurants([Function(GetAllRestaurantsBuilder b) updates]) = _$GetAllRestaurants;
}



abstract class GetAllCategories extends RestaurantsScreenEvent
    implements Built<GetAllCategories, GetAllCategoriesBuilder> {

  GetAllCategories._();
  factory GetAllCategories([Function(GetAllCategoriesBuilder b) updates]) = _$GetAllCategories;
}


abstract class FilterRestaurants extends RestaurantsScreenEvent
    implements Built<FilterRestaurants, FilterRestaurantsBuilder> {

  String? get Keyword;
  FilterRestaurants._();
  factory FilterRestaurants([Function(FilterRestaurantsBuilder b) updates]) = _$FilterRestaurants;
}
//

abstract class ChangeSelectedCity extends RestaurantsScreenEvent
    implements Built<ChangeSelectedCity, ChangeSelectedCityBuilder> {

  String? get value;
  ChangeSelectedCity._();
  factory ChangeSelectedCity([Function(ChangeSelectedCityBuilder b) updates]) = _$ChangeSelectedCity;
}