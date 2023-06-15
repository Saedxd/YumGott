import 'dart:typed_data';

import 'package:Yumgott/UI/RestaurantHome/AddProductScreen/bloc/AddProductScreen_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/AddProductScreen/bloc/AddProductScreen_State.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';



class AddProductScreenBloc extends Bloc<AddProductScreenEvent, AddProductScreenState> {

  IRepository _repository;


  AddProductScreenBloc(this._repository) : super(AddProductScreenState.initail());

  @override
  AddProductScreenState get initialState => AddProductScreenState.initail();

  @override
  Stream<AddProductScreenState> mapEventToState(
      AddProductScreenEvent event,
  ) async* {
    if (event is ChangeSelectedImage) {
      try {

        yield state.rebuild((b) => b
          ..PhotoFile = event.Value
        );

      }catch (e){
        print(e);
      }
    }
    if (event is ChangeAppetizersDropDownSize){

        try {
          if (state.ContainerHeight==0){
            yield state.rebuild((b) =>
            b
              ..ContainerHeight = event.Length! * ((event.Length==1)?75: 67)
            );
          }else{
            yield state.rebuild((b) =>
            b
              ..ContainerHeight =  0
            );
          }


        }catch(e){
          print(e);
        }

    }
    if (event is AddSelectedValues){
        try {
          print("state.SelectedValues_Array ${state.SelectedValues_Array}");
          print("event.SelectedList! : ${event.SelectedList!}");
          print("event.index! : ${event.index!}");
          yield state.rebuild((b)=>b..SelectedValues_Array![event.index!]= List.from(event.SelectedList!));
          print(state.SelectedValues_Array);
//I/flutter ( 2293): [water, cola]
// I/flutter ( 2293): state.SelectedValues_Array [[water, cola], [water, cola]]
// I/flutter ( 2293): event.SelectedList! : [water, cola]
// I/flutter ( 2293): event.index! : 0
// I/flutter ( 2293): [[water, cola], [water, cola]]
        }catch(e){
          print(e);

        }
    }


    if (event is CreateProduct){
        try {

          yield state.rebuild((b) => b
            ..error = ""
            ..success = true
            ..isLoading = false
           // ..AddVol = null
          );



          final date = await _repository.CreateProduct( event.name!, event.description!, event.appetizerIds!, event.category_id!, event.photo!, event.discount!, event.price!);

          print('get Success data $date');
          yield state.rebuild((b) => b
            ..error = ""
            ..success = true
            ..isLoading = false
           // ..AddVol.replace(date)
          );


        }catch(e){
          print(e);
          yield state.rebuild((b) => b
            ..error = ""
            ..success = true
            ..isLoading = false
            // ..AddVol = null
          );

        }
    }

    if (event is GetAppetizers){
        try {

          yield state.rebuild((b) => b
            ..error = ""
            ..success = false
            ..isLoading = true
            ..AppetizersCateogry = null
          );
          final date = await _repository.GetallAppetizerCategory();

          print('get Success data $date');
          yield state.rebuild((b) => b
            ..error = ""
            ..success = true
            ..isLoading = false
            ..AppetizersCateogry.replace(date)
          );

          for(int i=0;i<state.AppetizersCateogry!.data!.length;i++){
            List<String> temp = [];
            for(int j=0;j<state.AppetizersCateogry!.data![i].appetizers!.length;j++) {
              temp.add(state.AppetizersCateogry!.data![i].appetizers![j].name!);
            }
            state.AllAppetizers!.add(temp);
          }

          yield state.rebuild((b) => b
            ..SelectedValues_Array = List.filled(state.AppetizersCateogry!.data!.length, [])
          );



        }catch(e){
          print(e);
          yield state.rebuild((b) => b
            ..error = ""
            ..success = true
            ..isLoading = false
            ..AppetizersCateogry = null
          );
        }
    }
    if (event is GetProductCateogry){
        try {
          yield state.rebuild((b) => b
            ..error = ""
            ..success = false
            ..isLoading = true
            ..ProductCategorys = null
          );
          final date = await _repository.GetAllProductCategory();

          print('get Success data $date');
          yield state.rebuild((b) => b

            ..ProductCategorys.replace(date)
          );
          for(int i=0;i<state.ProductCategorys!.data!.length;i++){
          state.AllProductCategories!.add(state.ProductCategorys!.data![i].name.toString());
          }
          yield state.rebuild((b) => b
            ..error = ""
            ..success = true
            ..isLoading = false
          );

        }catch(e){
          print(e);
          yield state.rebuild((b) => b
            ..error = ""
            ..success = true
            ..isLoading = false
            ..ProductCategorys = null
          );
        }
    }
    if (event is ChangeSelectedBranch){
        try {

          yield state.rebuild((b) => b
            ..SelectedProductCategoryValue = event.Value!
          );

        }catch(e){
          print(e);

        }
    }

       if (event is EmptyList) {
          try {
            for(int i =0;i<state.SelectedValues_Array!.length;i++){
              state.SelectedValues_Array![i].clear();
            }



          }catch(e){
            print('get Error $e');

          }
        }
  }
}
