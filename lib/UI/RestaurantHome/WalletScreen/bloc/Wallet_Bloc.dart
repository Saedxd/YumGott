import 'dart:typed_data';

import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_State.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_State.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_State.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_State.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_State.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_State.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_State.dart';
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





class WalletBloc extends Bloc<WalletEvent, WalletState> {
  IRepository _repository;


  WalletBloc(this._repository) : super(WalletState.initail());

  @override
  WalletState get initialState => WalletState.initail();

  @override
  Stream<WalletState> mapEventToState(
      WalletEvent event,
  ) async* {


  }
}
