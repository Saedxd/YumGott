import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/ProductDetailsScreen/bloc/ProductDetails_Event.dart';
import 'package:Yumgott/UI/Home/ProductDetailsScreen/bloc/ProductDetails_State.dart';


class ProductDetailsBloc extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  IRepository _repository;

  ProductDetailsBloc(this._repository) : super(ProductDetailsState.initail());

  @override
  ProductDetailsState get initialState => ProductDetailsState.initail();

  @override
  Stream<ProductDetailsState> mapEventToState(
      ProductDetailsEvent event,
  ) async* {

    if (event is IncreamentCounter) {
      try {
        print("increamneted");


        yield state.rebuild((b) => b
            ..Counter = state.Counter !+ 1

        );
        print( state.Counter);
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b

        );
      }
    }
    if (event is ShowMoreSwitch) {
      try {
        print("increamneted");


        yield state.rebuild((b) => b
            ..Counter = state.Counter !+ 1

        );
        print( state.Counter);
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b

        );
      }
    }
    if (event is DecreamentCounter) {
      try {

        yield state.rebuild((b) => b
          ..Counter = state.Counter !- 1

        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b

        );
      }
    }

  }
}
