
import 'dart:developer';


import 'package:Yumgott/UI/Camera/TakeVideoScreen/bloc/Camera_State.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'Camera_Event.dart';



class CameraBloc extends Bloc<CameraEvent, CameraState> {

  IRepository _repository;

  CameraBloc(this._repository) : super(CameraState.initail()) ;

  @override
  CameraState get initialState => CameraState.initail();

  @override
  Stream<CameraState> mapEventToState(
      CameraEvent event,
      ) async* {


    if (event is ChangeSelectedFilter) {
        yield state.rebuild((b) =>
        b..SelectedFilter_Index = event.index!
        );
    }
    if (event is ChangeToCheckIfInitilized) {
        yield state.rebuild((b) =>
        b..Check_IfInitilized = !state.Check_IfInitilized!
        );
    }

    if (event is ChangeRecordingStatus) {
        yield state.rebuild((b) =>
        b..isRecording_Now = event.Value!
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
