library Wallet_State;


import 'dart:io';
import 'package:built_value/built_value.dart';


part 'Wallet_State.g.dart';

abstract class WalletState implements Built<WalletState, WalletStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;



  WalletState._();

  factory WalletState([updates(WalletStateBuilder b)]) = _$WalletState;
  factory WalletState.initail() {
    return WalletState((b) => b
        ..error =""
        ..isLoading = false
        ..success = false


    );
  }




}
