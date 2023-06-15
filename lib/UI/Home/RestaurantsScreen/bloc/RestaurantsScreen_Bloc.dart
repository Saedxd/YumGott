import 'dart:typed_data';

import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_Event.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_State.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_Event.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_State.dart';

class RestaurantsScreenBloc extends Bloc<RestaurantsScreenEvent, RestaurantsScreenState> {
  IRepository _repository;

  RestaurantsScreenBloc(this._repository) : super(RestaurantsScreenState.initail());

  @override
  RestaurantsScreenState get initialState => RestaurantsScreenState.initail();

  @override
  Stream<RestaurantsScreenState> mapEventToState(
      RestaurantsScreenEvent event,
  ) async* {

    // if (event is GetAllRestaurants){
    //   try {
    //     yield state.rebuild((b) => b
    //       ..GetRestaurantisLoading = true
    //       ..GetCategoryisloading = true
    //       ..error = ""
    //       ..GetRestaurantSuccess = false
    //       ..GetAllRestaurant = null
    //     );
    //
    //     state.FilteredRestaurants!.clear();
    //     state.UnFilteredRestaurants!.clear();
    //     final date = await _repository.GetAllRestaurants(-1, 10);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..GetAllRestaurant.replace(date)
    //     );
    //
    //     for(int i=0;i<state.GetAllRestaurant!.data!.length;i++){
    //       User USER = User();
    //       USER.name = state.GetAllRestaurant!.data![i].name!;
    //       USER.Image = state.GetAllRestaurant!.data![i].photo!;
    //     //  USER.Description = state.GetAllRestaurant!.data![i].bio!;
    //       USER.ID = state.GetAllRestaurant!.data![i].id!;
    //      //  USER.Followers = state.GetAllRestaurant!.data![i].followers!;
    //      //  USER.Following = state.GetAllRestaurant!.data![i].following!;
    //      // // USER.Ratting = state.GetAllRestaurant!.data![i].ratingsAverage!;
    //
    //       state.FilteredRestaurants!.add(USER);
    //       state.UnFilteredRestaurants!.add(USER);
    //     }
    //
    //     yield state.rebuild((b) => b
    //       ..GetRestaurantisLoading = false
    //       ..error = ""
    //       ..GetRestaurantSuccess= true
    //     );
    //   //  print("BOI : ${state.GetAllRestaurant!.data![0].boi.toString()}");
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..GetRestaurantisLoading = false
    //       ..error = ""
    //       ..GetRestaurantSuccess = false
    //       ..GetAllRestaurant = null
    //     );
    //   }
    // }
    //
    //
    // if (event is FilterRestaurants){
    //   try {
    //     yield state.rebuild((b) => b
    //       ..Searchsuccess = false
    //     );
    //
    //
    //     state.FilteredRestaurants!.clear();
    //
    //     state.UnFilteredRestaurants!.forEach((Restaurant) {
    //
    //       if (Restaurant.name.toLowerCase().contains(event.Keyword!)){
    //         state.FilteredRestaurants!.add(Restaurant);
    //       }
    //
    //     });
    //
    //     yield state.rebuild((b) => b
    //       ..Searchsuccess = true
    //     );
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..GetRestaurantisLoading = false
    //       ..error = ""
    //       ..GetRestaurantSuccess = false
    //       ..GetAllRestaurant = null
    //     );
    //   }
    // }
    //
    //
    // if (event is GetAllCategories){
    //   try {
    //     yield state.rebuild((b) => b
    //       ..GetCategoryisloading = true
    //       ..GetRestaurantisLoading = true
    //       ..error = ""
    //       ..GetCategorysuccess = false
    //       ..GetCategories = null
    //     );
    //
    //     final date = await _repository.GetAllCategories();
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..GetCategoryisloading = false
    //       ..error = ""
    //       ..GetCategorysuccess= true
    //       ..GetCategories.replace(date)
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..GetCategoryisloading = false
    //       ..error = ""
    //       ..GetCategorysuccess = false
    //       ..GetCategories = null
    //     );
    //   }
    // }

    if (event is ChangeSelectedCity){
      try {
        yield state.rebuild((b) => b
          ..SelectedCity = event.value!
        );
      } catch (e) {
        print('get Error $e');
      }
    }

  }
}
