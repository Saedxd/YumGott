import 'dart:typed_data';

import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/MenuScreen/bloc/Menu_Event.dart';
import 'package:Yumgott/UI/Home/MenuScreen/bloc/Menu_State.dart';




class MenuBloc extends Bloc<MenuEvent, MenuState> {
  IRepository _repository;

  MenuBloc(this._repository) : super(MenuState.initail());

  @override
  MenuState get initialState => MenuState.initail();

  @override
  Stream<MenuState> mapEventToState(
      MenuEvent event,
  ) async* {

    if (event is ChangeSelectedTab) {
      try {
        yield state.rebuild((b) => b
          ..SelectedTap = List.filled(100,false)
          ..SelectedTap![event.index!] = !state.SelectedTap![event.index!]
            ..SelectedIndex= event.index
        );

      } catch (e) {
        print('get Error $e');

      }
    }

    // if (event is GetMenu) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..GetMenu = null
    //     );
    //
    //
    //     final date = await _repository.GetRestaurantMenu(event.Restaurant_ID!);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..GetMenu.replace(date)
    //     );
    //
    //     for(int i=0;i<state.GetMenu!.categories!.length;i++){
    //       state.Tabs!.add(state.GetMenu!.categories![i].category.toString());
    //     }
    //
    //     List<List<Product>> Producttt = [];
    //     for(int i=0;i<state.GetMenu!.categories!.length;i++){
    //       List<Product> Temp = [];
    //      for(int j=0;j<state.GetMenu!.categories![i].products!.length;j++){
    //        Product pro = Product();
    //        pro.Image = state.GetMenu!.categories![i].products![j].image_path.toString();
    //        pro.Description = state.GetMenu!.categories![i].products![j].bio.toString();
    //        pro.Name = state.GetMenu!.categories![i].products![j].name.toString();
    //        pro.price = state.GetMenu!.categories![i].products![j].price.toString();
    //        pro.ID = state.GetMenu!.categories![i].products![j].id.toString();
    //
    //        Temp.add(pro);
    //      }
    //       Producttt.add(Temp);
    //     }
    //
    //
    //     yield state.rebuild((b) => b
    //     ..ProductList = Producttt
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //       ..GetMenu = null
    //     );
    //   }
    // }

    //
    // if (event is GetCategoryProducts) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..CateProductsisLoading = true
    //       ..CateProductsuccess = false
    //       ..GetCategoryProducts = null
    //     );
    //
    //   final date = await _repository.GetCategoryProducts(event.Category_ID!);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..CateProductsisLoading = false
    //       ..CateProductsuccess = true
    //       ..GetCategoryProducts.replace(date)
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..CateProductsisLoading = false
    //       ..CateProductsuccess = false
    //       ..GetCategoryProducts = null
    //     );
    //   }
    // }


  }
}
