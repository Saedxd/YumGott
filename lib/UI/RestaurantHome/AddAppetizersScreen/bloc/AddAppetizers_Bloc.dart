import 'dart:typed_data';

import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/bloc/AddAppetizers_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/bloc/AddAppetizers_State.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/pages/AddAppetizersScreen.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';



class AddAppetizersBloc extends Bloc<AddAppetizersEvent, AddAppetizersState> {

  IRepository _repository;




  AddAppetizersBloc(this._repository) : super(AddAppetizersState.initail());

  @override
  AddAppetizersState get initialState => AddAppetizersState.initail();

  @override
  Stream<AddAppetizersState> mapEventToState(
      AddAppetizersEvent event,
  ) async* {

    if (event is CreateAppetizer){
      try {

        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
          ..Create_appetizer = null
        );




        final date = await _repository.CreateAppetizer(event.name!,event.info!, event.appetizer_id!, event.price!);

        print('get Success data $date');
        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
         ..Create_appetizer.replace(date)
        );



        showToast(context3!,"Appetizer Created Successfully",false);

      }catch(e){
        print(e);
        showToast(context3!,e.toString(),true);

        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
         ..Create_appetizer = null
        );

      }
    }
    if (event is GetAppetizers){
      try {

        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
          ..GetAppetizers = null
        );




        final date = await _repository.GetallAppetizerCategory();

        print('get Success data $date');
        yield state.rebuild((b) => b
         ..GetAppetizers.replace(date)
        );

        for(int i=0;i<state.GetAppetizers!.data!.length;i++){
          state.AllAppetizersCategories!.add(state.GetAppetizers!.data![i].name.toString());
        }



        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
        );

        // showToast(context3!,"Appetizer Created Successfully",false);

      }catch(e){
        print(e);
        showToast(context3!,e.toString(),true);

        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
         ..GetAppetizers = null
        );

      }
    }
    if (event is ChangeSelectedImage) {
      try {

        yield state.rebuild((b) => b
          ..PhotoFile = event.Value
        );

      }catch (e){
        print(e);
      }
    }
    if (event is ChangeSelectedAppetizerCategory) {
      try {

        yield state.rebuild((b) => b
          ..Selected_AppetizerCategory = event.Value!
        );


      }catch (e){
        print(e);
      }
    }

  }
}
