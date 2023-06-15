library Transactions_State;



import 'package:built_value/built_value.dart';


part 'Transactions_State.g.dart';

abstract class TransactionState implements Built<TransactionState, TransactionStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;

  // GetallTranscationsModel? get GetallTranscations;
  //

  TransactionState._();


  factory TransactionState([updates(TransactionStateBuilder b)]) = _$TransactionState;
  factory TransactionState.initail() {
    return TransactionState((b) => b
        ..error =""
        ..isLoading = false
        ..success = false
        //..GetallTranscations = null


    );
  }




}
