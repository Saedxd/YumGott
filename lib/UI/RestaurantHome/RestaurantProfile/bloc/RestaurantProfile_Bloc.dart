
import 'dart:developer';
import 'package:Yumgott/UI/RestaurantHome/RestaurantProfile/bloc/RestaurantProfile_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantProfile/bloc/RestaurantProfile_State.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:dio/dio.dart';




class RestaurantProfileBloc extends Bloc<RestaurantProfileEvent, RestaurantProfileState> {

  IRepository _repository;

  RestaurantProfileBloc(this._repository) : super(RestaurantProfileState.initail()) ;

  @override
  RestaurantProfileState get initialState => RestaurantProfileState.initail();

  @override
  Stream<RestaurantProfileState> mapEventToState(
      RestaurantProfileEvent event,
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
    if (event is GetProfile) {
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
    if (event is FollowRestaurant) {
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
        // yield state.rebuild((b) => b
        //   ..isLoading = false
        //   ..error = ""
        //   ..success = false
        //    ..UserData = null
        // );
      }
    }
    if (event is ShowMenuWidget) {
      try {
        yield state.rebuild((b) => b
          ..ShowMenuWidget = !state.ShowMenuWidget!
        );


      } catch (e) {
        print('get Error $e');

      }
    }

  }
}
