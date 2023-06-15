// ignore_for_file: non_constant_identifier_names

library ProductDetails_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'ProductDetails_Event.g.dart';

abstract class ProductDetailsEvent{}


abstract class IncreamentCounter extends ProductDetailsEvent
    implements Built<IncreamentCounter, IncreamentCounterBuilder> {


  IncreamentCounter._();
  factory IncreamentCounter([Function(IncreamentCounterBuilder b) updates]) = _$IncreamentCounter;
}



abstract class DecreamentCounter extends ProductDetailsEvent
    implements Built<DecreamentCounter,DecreamentCounterBuilder> {


  DecreamentCounter._();
  factory DecreamentCounter([updates(DecreamentCounterBuilder b)]) = _$DecreamentCounter;
}

abstract class ShowMoreSwitch extends ProductDetailsEvent
    implements Built<ShowMoreSwitch, ShowMoreSwitchBuilder> {

  ShowMoreSwitch._();
  factory ShowMoreSwitch([Function(ShowMoreSwitchBuilder b) updates]) = _$ShowMoreSwitch;
}


abstract class Likeproduct extends ProductDetailsEvent
    implements Built<Likeproduct, LikeproductBuilder> {


  Likeproduct._();
  factory Likeproduct([Function(LikeproductBuilder b) updates]) = _$Likeproduct;
}

abstract class GetProduct extends ProductDetailsEvent
    implements Built<GetProduct, GetProductBuilder> {

  String? get Country;
  GetProduct._();
  factory GetProduct([Function(GetProductBuilder b) updates]) = _$GetProduct;
}
