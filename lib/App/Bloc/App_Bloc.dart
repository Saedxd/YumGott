
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'App_Event.dart';
import 'App_State.dart';


class AppBloc extends Bloc<AppEvent, AppState> {

  IRepository _repository;

  AppBloc(this._repository) : super(AppState.initail()) ;


  @override
  AppState get initialState => AppState.initail();

  @override
  Stream<AppState> mapEventToState(
      AppEvent event,
      ) async* {

    if (event is ChangeTheme) {
      try {
        yield state.rebuild((b) =>
        b
          ..theme = event.theme
        );
      }catch(e){

      }
      }


    // final date = await _repository.SendOtpForResetPassword(event.Email!);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //       ..ResetPassword.replace(date)
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = "Something went wrong"
    //       ..success = false
    //       ..ResetPassword = null
    //     );
    //   }
    // }
    //

  }
}
