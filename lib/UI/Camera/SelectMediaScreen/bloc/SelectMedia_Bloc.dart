
import 'dart:developer';


import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_State.dart';
import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_State.dart';
import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_State.dart';
import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_State.dart';
import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_State.dart';
import 'package:Yumgott/UI/Camera/TakeVideoScreen/bloc/Camera_State.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'SelectMedia_Event.dart';



class SelectMediaBloc extends Bloc<SelectMediaEvent, SelectMediaState> {

  IRepository _repository;

  SelectMediaBloc(this._repository) : super(SelectMediaState.initail()) ;

  @override
  SelectMediaState get initialState => SelectMediaState.initail();

  @override
  Stream<SelectMediaState> mapEventToState(
      SelectMediaEvent event,
      ) async* {


    if (event is ChangeSelectedVideoPath) {
      yield state.rebuild((b) =>
      b..VideoChange_Isloading =true

      );
        yield state.rebuild((b) =>
        b..SelectedVideoPath = event.Value!

        );
      yield state.rebuild((b) =>
      b..VideoChange_Isloading = false

      );
    }



    //    final date = await _repository.Login(event.Email!, event.password!,event.fcmToken!);
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
    //    final date = await _repository.LoginWithFacebook(event.AccessToken!,event.fcmToken!);
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
    //    final date = await _repository.LoginWithGoogle(event.Email!,event.image!,event.Name!,event.fcmToken!);
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
    //


  }
}
