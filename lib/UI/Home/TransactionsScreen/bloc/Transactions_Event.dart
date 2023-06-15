// ignore_for_file: non_constant_identifier_names

library Transactions_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'Transactions_Event.g.dart';

abstract class TransactionsEvent{}


abstract class GetTransactions extends TransactionsEvent
    implements Built<GetTransactions, GetTransactionsBuilder> {

  GetTransactions._();
  factory GetTransactions([Function(GetTransactionsBuilder b) updates]) = _$GetTransactions;
}
