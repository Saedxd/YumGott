import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:Yumgott/UI/Home/SettingsScreen/bloc/Settings_State.dart';
import 'package:Yumgott/UI/Home/SettingsScreen/bloc/Settings_State.dart';
import 'package:Yumgott/UI/Home/SettingsScreen/bloc/Settings_State.dart';
import 'package:Yumgott/UI/Home/SettingsScreen/bloc/Settings_State.dart';
import 'package:Yumgott/UI/Home/SettingsScreen/bloc/Settings_State.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Event.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Event.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_State.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_State.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_State.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_State.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_State.dart';





class SettingsScreenBloc extends Bloc<SettingsScreenState, SettingsScreenState> {
  IRepository _repository;

  SettingsScreenBloc(this._repository) : super(SettingsScreenState.initail());

  @override
  SettingsScreenState get initialState => SettingsScreenState.initail();

  @override
  Stream<SettingsScreenState> mapEventToState(
      SettingsScreenState event,
  ) async* {


  }
}
