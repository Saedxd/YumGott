
import 'dart:developer';

import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/bloc/userProfile_State.dart';
import 'package:Yumgott/models/UserDataModel/DataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'userProfile_Event.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {

  IRepository _repository;


  UserProfileBloc(this._repository) : super(UserProfileState.initail()) ;

  @override
  UserProfileState get initialState => UserProfileState.initail();

  @override
  Stream<UserProfileState> mapEventToState(
      UserProfileEvent event,
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

    if (event is GetProfile){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..UserData = null
        );

        final date = await _repository.GetProfile();


        print(date);

        if (date.message!="Unauthenticated")
          yield state.rebuild((b) => b
            ..isLoading = false
            ..error = ""
            ..success= true
            ..UserData.replace(date)
          );
        else{
          yield state.rebuild((b) => b
            ..success= false
            ..error= "Unauthenticated"
          );
        }

      } on DioException catch (e) {
        print('get Error $e.toString()');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = e.toString()
          ..success = false
          ..UserData = null
        );
      }
    }

    //
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
    // if (event is ChangeCheckBoxStatus) {
    //   try {
    //
    //     yield state.rebuild((b) => b
    //       ..CheckboxStatus = !state.CheckboxStatus!
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //
    //     );
    //   }
    // }


  }
}
