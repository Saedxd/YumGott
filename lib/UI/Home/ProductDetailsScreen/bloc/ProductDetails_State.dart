library ProductDetails_State;


import 'dart:io';
import 'package:built_value/built_value.dart';


part 'ProductDetails_State.g.dart';

abstract class ProductDetailsState implements Built<ProductDetailsState, ProductDetailsStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;

  int? get Counter;

  bool? get ShowMore_Clicked;



  ProductDetailsState._();

  factory ProductDetailsState([updates(ProductDetailsStateBuilder b)]) = _$ProductDetailsState;
  factory ProductDetailsState.initail() {
    return ProductDetailsState((b) => b
        ..error =""
        ..isLoading = false
        ..success = false
        ..ShowMore_Clicked = false
        ..Counter = 1



    );
  }




}
