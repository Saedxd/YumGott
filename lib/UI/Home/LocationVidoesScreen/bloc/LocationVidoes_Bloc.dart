import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:Yumgott/UI/Home/LocationVidoesScreen/bloc/LocationVidoes_Event.dart';
import 'package:Yumgott/UI/Home/LocationVidoesScreen/bloc/LocationVidoes_State.dart';
import 'package:Yumgott/UI/Home/LocationVidoesScreen/bloc/LocationVidoes_State.dart';
import 'package:Yumgott/UI/Home/LocationVidoesScreen/bloc/LocationVidoes_State.dart';
import 'package:Yumgott/UI/Home/LocationVidoesScreen/bloc/LocationVidoes_State.dart';
import 'package:Yumgott/UI/Home/LocationVidoesScreen/bloc/LocationVidoes_State.dart';





class LocationVidoesBloc extends Bloc<LocationVidoesEvent, LocationVidoesState> {
  IRepository _repository;

  LocationVidoesBloc(this._repository) : super(LocationVidoesState.initail());

  @override
  LocationVidoesState get initialState => LocationVidoesState.initail();

  @override
  Stream<LocationVidoesState> mapEventToState(
      LocationVidoesEvent event,
  ) async* {

  }
}
