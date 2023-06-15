
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'login_event.dart';
import 'login_state.dart';


class loginBloc extends Bloc<LOginEvent, loginState> {

  IRepository _repository;

  loginBloc(this._repository) : super(loginState.initail()) ;

  @override
  loginState get initialState => loginState.initail();

  @override
  Stream<loginState> mapEventToState(
      LOginEvent event,
      ) async* {


    if (event is PostLOgin) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..data = null
        );

       final date = await _repository.Login(event.Email!, event.password!);
        print(date);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success= true
          ..data.replace(date)
        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = false
           ..data = null
        );
      }
    }
    //
    // if (event is SignInFacebook) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..data = null
    //     );
    //
    //    final date = await _repository.LoginWithFacebook(event.AccessToken!);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //       ..data.replace(date)
    //     );
    //
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //        ..data = null
    //     );
    //   }
    // }
    //
    // if (event is SigninWithGoogle) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..data = null
    //     );
    //
    //    final date = await _repository.LoginWithGoogle(event.Email!,event.image!,event.Name!);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //       ..data.replace(date)
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //        ..data = null
    //     );
    //   }
    // }



  }
}
