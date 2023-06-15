
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Profiles/HisUserProfile/bloc/hisUserProfile_Event.dart';
import 'package:Yumgott/UI/Profiles/HisUserProfile/bloc/hisUserProfile_State.dart';



class HisUserProfileBloc extends Bloc<HisUserProfileEvent, HisUserProfileState> {

  IRepository _repository;

  HisUserProfileBloc(this._repository) : super(HisUserProfileState.initail()) ;

  @override
  HisUserProfileState get initialState => HisUserProfileState.initail();

  @override
  Stream<HisUserProfileState> mapEventToState(
      HisUserProfileEvent event,
      ) async* {


    if (event is ChangeSelectedTab) {
      try {

            yield state.rebuild((b) => b
              ..SelectedTap = List.filled(3,false)
              ..SelectedTap![event.index!] = !state.SelectedTap![event.index!]
            );

      } catch (e) {
        print('get Error $e');

      }
    }
    // if (event is GetProfile) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..UserData = null
    //     );
    //
    //    final date = await _repository.GetProfile(event.User_ID!);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //       ..UserData.replace(date)
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //        ..UserData = null
    //     );
    //   }
    // }
    // if (event is Switch_ForgotPasswordScreen) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..ForgotPassScreen_Switch = event.Value
    //     );
    //
    //   }catch(e){
    //     print(e);
    //   }
    // }
    //
    // if (event is ChangeIconStatus) {
    //   try {
    //
    //     yield state.rebuild((b) => b
    //       ..ShowPass_IconStatus = !state.ShowPass_IconStatus!
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //
    //     );
    //   }
    // }
    if (event is FollowUser) {
      try {

        yield state.rebuild((b) => b
          ..Follow_ISloading = true
        );

        yield state.rebuild((b) => b
          ..AlreadyFollowing = !state.AlreadyFollowing!
        );

        // final date = await _repository.GetProfile(event.Restaurant_ID!);
        //  print(date);

        yield state.rebuild((b) => b
          ..Follow_ISloading = false
        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b

        );
      }
    }
    //

  }
}
