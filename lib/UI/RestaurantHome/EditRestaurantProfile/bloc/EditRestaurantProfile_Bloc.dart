import 'dart:typed_data';

import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/UI/RestaurantHome/EditRestaurantProfile/bloc/EditRestaurantProfile_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/EditRestaurantProfile/bloc/EditRestaurantProfile_State.dart';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';



class EditRestaurantProfileBloc extends Bloc<EditRestaurantProfileEvent, EditRestaurantProfileState> {


  IRepository _repository;

  EditRestaurantProfileBloc(this._repository) : super(EditRestaurantProfileState.initail());

  @override
  EditRestaurantProfileState get initialState => EditRestaurantProfileState.initail();

  @override
  Stream<EditRestaurantProfileState> mapEventToState(
      EditRestaurantProfileEvent event,
  ) async* {

    if (event is SwitchCheckBoxes){
      try{
//
        yield state.rebuild((b) => b
          ..CheckBoxisLoading = true
        );


        yield state.rebuild((b) => b
              ..CheckBoxStatusesList![event.index!] = !state.CheckBoxStatusesList![event.index!]
            );


        yield state.rebuild((b) => b
          ..CheckBoxisLoading = false
        );





      }catch(e){
        print(e);
      }
    }
    if (event is ChangeEndTime){
      try{
//
        yield state.rebuild((b) => b
          ..EndTime = event.Value!
        );


      }catch(e){
        print(e);
      }
    }
    if (event is ChangeStartTime){
      try{

        yield state.rebuild((b) => b
          ..StartTime = event.Value!
        );



      }catch(e){
        print(e);
      }
    }
    if (event is ChangeCoverImage) {
      try {

        yield state.rebuild((b) => b
          ..Cover_PhotoFile = event.Value
        );

      }catch (e){

        print(e);

      }
    }
    if (event is ChangeProfileImage) {
      try {

        yield state.rebuild((b) => b
          ..Profile_PhotoFile = event.Value
        );

      }catch (e){
        print(e);
      }
    }

    // if (event is AddMarkers) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..NewMarker_isLoading = true
    //     );
    //     state.New_marker2!.clear();
    //     yield state.rebuild((b) => b
    //       ..New_marker2!.add(event.marker)
    //     );
    //
    //     yield state.rebuild((b) => b
    //       ..NewMarker_isLoading = false
    //     );
    //
    //
    //
    //
    //
    //
    //
    //   } catch (e) {
    //
    //   }
    // }
    //

  }
}
