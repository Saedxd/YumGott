
import 'dart:developer';
import 'package:Yumgott/UI/Camera/DisplayVideoScreen/bloc/DisplayVideo_State.dart';


import 'package:Yumgott/UI/Camera/TakeVideoScreen/bloc/Camera_State.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'DisplayVideo_Event.dart';


class DisplayVidoeBloc extends Bloc<DisplayVideoEvent, DisplayVidoeState> {

  IRepository _repository;

  DisplayVidoeBloc(this._repository) : super(DisplayVidoeState.initail()) ;

  @override
  DisplayVidoeState get initialState => DisplayVidoeState.initail();

  @override
  Stream<DisplayVidoeState> mapEventToState(
      DisplayVideoEvent event,
      ) async* {


    if (event is ChangeSelectedFilter) {
        yield state.rebuild((b) =>
        b..SelectedFilter_Index = event.index!
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
  //  }

    if (event is UploadReel) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
            ..data = null
        );

      final date = await _repository.CreateReel(event.meal_id!, event.video!);
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



  }
}
