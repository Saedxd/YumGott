import 'dart:typed_data';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/UI/Home/CategoryRestaurantsScreen/bloc/CategoryRestaurants_Event.dart';
import 'package:Yumgott/UI/Home/CategoryRestaurantsScreen/bloc/CategoryRestaurants_State.dart';

import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';



class CategoryRestaurantsBloc extends Bloc<CategoryRestaurantsEvent, CategoryRestaurantsState> {
  IRepository _repository;

  CategoryRestaurantsBloc(this._repository) : super(CategoryRestaurantsState.initail());

  @override
  CategoryRestaurantsState get initialState => CategoryRestaurantsState.initail();

  @override
  Stream<CategoryRestaurantsState> mapEventToState(
      CategoryRestaurantsEvent event,
  ) async* {
    // if (event is GetCategoryRestaurants) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..error = ""
    //       ..success = false
    //       ..isLoading = true
    //       ..GetCategoryRestaurants = null
    //     );
    //     state.FilteredRestaurants!.clear();
    //     state.UnFilteredRestaurants!.clear();
    //     final date = await _repository.GetCategoryRestaurants(event.Category_ID!);
    //
    //     print('get Success data $date');
    //     yield state.rebuild((b) => b
    //       ..GetCategoryRestaurants.replace(date)
    //     );
    //     for(int i=0;i<state.GetCategoryRestaurants!.data!.restaurant!.length;i++){
    //       User USER = User();
    //       USER.name = state.GetCategoryRestaurants!.data!.restaurant![i].name!;
    //       USER.Image = state.GetCategoryRestaurants!.data!.restaurant![i].profile_image_path!;
    //     //  USER.Description = state.GetCategoryRestaurants!.data!.restaurant![i].bio!;
    //       USER.ID = state.GetCategoryRestaurants!.data!.restaurant![i].id!;
    //       // USER.Followers = state.GetCategoryRestaurants!.data!.restaurant![i].followers!;
    //       // USER.Following = state.GetCategoryRestaurants!.data!.restaurant![i].following!;
    //    //   USER.Ratting = state.GetCategoryRestaurants!.data!.restaurant![i].ratingsAverage!;
    //
    //       state.FilteredRestaurants!.add(USER);
    //       state.UnFilteredRestaurants!.add(USER);
    //     }
    //     yield state.rebuild((b) => b
    //       ..error = ""
    //       ..success = true
    //       ..isLoading = false
    //     );
    //     // print("NO EXCEPTIONS");
    //   } catch (e) {
    //     print("EXCEPTION $e");
    //     yield state.rebuild((b) => b
    //       ..error = "error"
    //       ..success = false
    //       ..isLoading = false
    //       ..GetCategoryRestaurants = null
    //     );
    //   }
    // }

  }
}
