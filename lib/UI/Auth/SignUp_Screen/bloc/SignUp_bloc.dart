// ignore_for_file: file_names


import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Data/repository/irepository.dart';

import 'SignUp_event.dart';
import 'SignUp_state.dart';


class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {

  IRepository _repository;

  SignUpBloc(this._repository) : super(SignUpState.initail());

  @override
  SignUpState get initialState => SignUpState.initail();

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event,) async* {



    if (event is PostSignUp) {
      try {
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..error = ""
          ..success = false
            ..data = null
        );


        final date = await _repository.Register(event.Email!, event.password!, event.username!, event.PhoneNUmber!, "","");
        print('get Success data ${date}');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..data.replace(date)

        );
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..data = null
        );
      }
    }
    // if (event is SignUpWithGoogle) {
    //   try {
    //     yield state.rebuild((b) =>
    //     b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..data = null
    //     );
    //
    //
    //     final date = await _repository.SignUpWithGoogle(event.Email!,event.image!,event.Name!);
    //     print('get Success data ${date}');
    //     yield state.rebuild((b) =>
    //     b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = true
    //       ..data.replace(date)
    //
    //     );
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) =>
    //     b
    //       ..isLoading = false
    //       ..error = "Something went wrong"
    //       ..success = false
    //       ..data = null
    //     );
    //   }
    // }
    // if (event is SignUpWithFacebook) {
    //   try {
    //     yield state.rebuild((b) =>
    //     b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..data = null
    //     );
    //
    //     final date = await _repository.SignUpWithFacebook(event.AccessToken!);
    //     print('get Success data ${date}');
    //     yield state.rebuild((b) =>
    //
    //     b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = true
    //       ..data.replace(date)
    //
    //     );
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) =>
    //     b
    //       ..isLoading = false
    //       ..error = "Something went wrong"
    //       ..success = false
    //       ..data = null
    //     );
    //   }
    // }


  }
}
