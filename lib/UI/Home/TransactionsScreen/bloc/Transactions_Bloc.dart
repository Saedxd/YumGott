import 'dart:typed_data';

import 'package:Yumgott/UI/Home/TransactionsScreen/bloc/Transactions_Event.dart';
import 'package:Yumgott/UI/Home/TransactionsScreen/bloc/Transactions_State.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';


class TransactionBloc extends Bloc<TransactionsEvent, TransactionState> {
  IRepository _repository;

  TransactionBloc(this._repository) : super(TransactionState.initail());

  @override
  TransactionState get initialState => TransactionState.initail();


  @override
  Stream<TransactionState> mapEventToState(
      TransactionsEvent event,
  ) async*{
    // if (event is GetTransactions) {
    //   try {
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..GetallTranscations = null
    //     );
    //
    //
    //     final date = await _repository.GetTransactions();
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //       ..GetallTranscations.replace(date)
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //       ..GetallTranscations = null
    //     );
    //   }
    // }

  }
}
