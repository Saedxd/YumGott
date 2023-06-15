import 'dart:typed_data';

import 'package:Yumgott/UI/RestaurantHome/OrderScreen/bloc/RestaurantOrderScreen_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/OrderScreen/bloc/RestaurantOrderScreen_State.dart';
import 'package:Yumgott/UI/RestaurantHome/OrderScreen/bloc/RestaurantOrderScreen_State.dart';
import 'package:Yumgott/UI/RestaurantHome/OrderScreen/bloc/RestaurantOrderScreen_State.dart';
import 'package:Yumgott/UI/RestaurantHome/OrderScreen/bloc/RestaurantOrderScreen_State.dart';
import 'package:Yumgott/UI/RestaurantHome/OrderScreen/bloc/RestaurantOrderScreen_State.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_Event.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_State.dart';

class RestaurantOrderScreenBloc extends Bloc<RestaurantOrderScreenEvent, RestaurantOrderScreenState> {
  IRepository _repository;

  RestaurantOrderScreenBloc(this._repository) : super(RestaurantOrderScreenState.initail());

  @override
  RestaurantOrderScreenState get initialState => RestaurantOrderScreenState.initail();

  @override
  Stream<RestaurantOrderScreenState> mapEventToState(
      RestaurantOrderScreenEvent event,
  ) async* {

  }
}
