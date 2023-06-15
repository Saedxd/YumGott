// ignore_for_file: non_constant_identifier_names

library Wallet_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'Wallet_Event.g.dart';

abstract class WalletEvent{}


abstract class ChangeSelectedItem extends WalletEvent
    implements Built<ChangeSelectedItem, ChangeSelectedItemBuilder> {

  String? get Country;
  ChangeSelectedItem._();
  factory ChangeSelectedItem([Function(ChangeSelectedItemBuilder b) updates]) = _$ChangeSelectedItem;
}

