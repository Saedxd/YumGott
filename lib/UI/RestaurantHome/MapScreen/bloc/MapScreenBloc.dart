import 'dart:typed_data';

import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/UI/RestaurantHome/MapScreen/bloc/MapScreen_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/MapScreen/bloc/MapScreen_State.dart';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';




class MapScreenBloc extends Bloc<MapScreenEvent, MapScreenState> {


  IRepository _repository;

  MapScreenBloc(this._repository) : super(MapScreenState.initail());

  @override
  MapScreenState get initialState => MapScreenState.initail();

  @override
  Stream<MapScreenState> mapEventToState(
      MapScreenEvent event,
  ) async* {


    if (event is ClearMarkers) {
      try {
        state.New_marker2!.clear();
      } catch (e) {
        print(e);
      }
    }


    if (event is AddMarkers) {
      try {
        yield state.rebuild((b) => b
          ..NewMarker_isLoading = true
        );
        state.New_marker2!.clear();
        yield state.rebuild((b) => b
          ..New_marker2!.add(event.marker!)
        );

        yield state.rebuild((b) => b
          ..NewMarker_isLoading = false
        );

      } catch(e){

      }
    }
  }
}
