import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_Event.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_State.dart';

class OrderScreenBloc extends Bloc<OrderScreenEvent, OrderScreenState> {
  IRepository _repository;

  OrderScreenBloc(this._repository) : super(OrderScreenState.initail());

  @override
  OrderScreenState get initialState => OrderScreenState.initail();

  @override
  Stream<OrderScreenState> mapEventToState(
      OrderScreenEvent event,
  ) async* {
    if (event is ChangeCheckBox1Status) {
      try {

        yield state.rebuild((b) => b
          ..Checkbox1Status = !state.Checkbox1Status!
          ..Checkbox2Status =false
        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b

        );
      }
    }
    if (event is ChangeCheckBox2Status) {
      try {

        yield state.rebuild((b) => b
          ..Checkbox2Status = !state.Checkbox2Status!
          ..Checkbox1Status = false
        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b

        );
      }
    }
  }
}
