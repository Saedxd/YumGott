import 'dart:typed_data';


import 'package:Yumgott/UI/RestaurantHome/SettingsScreen/bloc/RestaurantSettingsScreen_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/SettingsScreen/bloc/RestaurantSettingsScreen_State.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';




class RestaurantSettingsScreenBloc extends Bloc<RestaurantSettingsScreenEvent, RestaurantSettingsScreenState> {

  IRepository _repository;

  RestaurantSettingsScreenBloc(this._repository) : super(RestaurantSettingsScreenState.initail());

  @override
  RestaurantSettingsScreenState get initialState => RestaurantSettingsScreenState.initail();

  @override
  Stream<RestaurantSettingsScreenState> mapEventToState(
      RestaurantSettingsScreenEvent event,
  ) async* {


  }
}
