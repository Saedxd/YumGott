
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_State.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/pages/MenuScreen.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:dio/dio.dart';




class RestaurantMenuBloc extends Bloc<RestaurantMenuEvent, RestaurantMenuState> {

  IRepository _repository;

  RestaurantMenuBloc(this._repository) : super(RestaurantMenuState.initail());

  @override
  RestaurantMenuState get initialState => RestaurantMenuState.initail();

  @override
  Stream<RestaurantMenuState> mapEventToState(
      RestaurantMenuEvent event,
  ) async* {

    if (event is SwitchApperanceStatus){

      try {
        yield state.rebuild((b) =>
        b
          ..MenuStatusLoading = true
        );
        yield state.rebuild((b) =>
        b
          ..MenuTileStatus![event.Index!] = !state.MenuTileStatus![event.Index!]
        );
        print(state.MenuTileStatus);
        yield state.rebuild((b) =>
        b
          ..MenuStatusLoading = false
        );
      }catch(e){
        print(e);
      }
    }
    if (event is ChangeSelectedType){
      try {
        yield state.rebuild((b) =>
        b   ..BranchtypeStatus = List.filled(2, false)
        );

        yield state.rebuild((b) =>
        b
          ..BranchtypeStatus![event.index!]= !state.BranchtypeStatus![event.index!]
        );


      }catch(e){
        print(e);
      }
    }
    if (event is GetMenu){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..Category = null
        );
        state.MenuTileList!.clear();

        final date = await _repository.GetAllMenu();
        print(date);

        yield state.rebuild((b) => b
          ..Category.replace(date)
        );

        for(int i=0;i<state.Category!.data!.length;i++){
          RestaurantMenuTile Tile = RestaurantMenuTile();
          Tile.name = state.Category!.data![i].name.toString();
          Tile.ID = state.Category!.data![i].id!;
          Tile.Type = state.Category!.data![i].is_appetizers;
          List<Product> ListProducts=[];
          List<Appetizer> ListAppetizers=[];

          for(int j=0;j<state.Category!.data![i].meals!.length;j++){
            Product product = Product();
            product.price = state.Category!.data![i].meals![j].price!;
            product.Description = state.Category!.data![i].meals![j].description!;
            product.ID = state.Category!.data![i].meals![j].id!;
            product.Name = state.Category!.data![i].meals![j].name!;
            state.Category!.data![i].meals![j].photo_main!=null?
            product.Image = state.Category!.data![i].meals![j].photo_main!.toString():print("null");
            ListProducts.add(product);
          }



          Tile.Products = ListProducts;

          for(int j=0;j<state.Category!.data![i].appetizers!.length;j++){
            Appetizer appetizer = Appetizer();
            appetizer.price = state.Category!.data![i].appetizers![j].price!;
            appetizer.info = state.Category!.data![i].appetizers![j].info!;
            appetizer.ID = state.Category!.data![i].appetizers![j].id!;
            appetizer.name = state.Category!.data![i].appetizers![j].name!;
            appetizer.appetizer_id = state.Category!.data![i].appetizers![j].appetizer_id!;
            ListAppetizers.add(appetizer);
            //  product.price = state.Category!.data![i].meals![j].price!;
         //  product.Image = state.Category!.data![i].meals![j].photo_main!;
          }
          Tile.Appetizers = ListAppetizers;
          print( Tile.Appetizers);
          Tile.Length =  Tile.Type=="1"? ListAppetizers.length:ListProducts.length;
          //


          
          
          state.MenuTileList!.add(Tile);
        }
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success= true
        );


      } catch(e){
        print(e);
        showToast(context2!,e.toString(),true);

        yield state.rebuild((b) => b
          ..isLoading = false
          // ..error = e.message
          ..success= false
          ..Category = null
        );
      }
    }
    if (event is CreateBranch){
      try {
        yield state.rebuild((b) => b
          ..success= false
        );



        RestaurantMenuTile Tile = RestaurantMenuTile();
        Tile.name = event.name;
        Tile.Type = event.is_appetizer!.toString();
        state.MenuTileList!.insert(0,Tile);

        yield state.rebuild((b) => b
          ..success= true
        );

        final date = await _repository.CreateCategory(event.name!, event.is_appetizer!);
        print(date);

        yield state.rebuild((b) => b
          ..Category.replace(date)
        );

        state.MenuTileList![0].ID = state.Category!.id;

        print(  state.MenuTileList![0].ID);
        print(  state.MenuTileList![0].name);
        print(  state.MenuTileList![0].Type);
        showToast(context2!,"Category was made successfully",false);



      } catch(e){
        print(e);
        showToast(context2!,e.toString(),true);

      }

    }
    if (event is UpdateBranch){
      try {
         yield state.rebuild((b) => b
          ..success= false
        );

         state.MenuTileList![event.index!].name = event.name.toString();

         yield state.rebuild((b) => b
           ..success= true
         );


        final date = await _repository.UpdateCategory(event.ID!, event.name!);
        print(date);

        yield state.rebuild((b) => b
          ..Category.replace(date)
        );

         showToast(context2!,"Name Changed Successfully",false);

      } catch(e){
        print(e);
        showToast(context2!,e.toString(),true);

      }
    }
    if (event is ChangeDialogStatus){
      try {
        yield state.rebuild((b) => b
          ..DialogStatus = List.filled(10000, false)
        );

        yield state.rebuild((b) => b
          ..DialogStatus![event.index!] = !state.DialogStatus![event.index!]
        );



      } catch(e){
        print(e);
        showToast(context2!,e.toString(),true);
      }
    }
    if (event is CloseDialog){
      try {

        yield state.rebuild((b) => b
          ..DialogStatus = List.filled(10000, false)
        );


      } catch(e){
        print(e);
        showToast(context2!,e.toString(),true);
      }
    }
    if (event is DeleteBranch){
      try {
        yield state.rebuild((b) => b
          ..success= false
        );

        state.MenuTileList!.removeAt(event.index!);
        yield state.rebuild((b) => b
          ..success= true
        );

        final date = await _repository.DeleteCategory(event.ID!);
        print(date);

        yield state.rebuild((b) => b
          ..Category.replace(date)
        );


        showToast(context2!,"Deleted Successfully",false);

      } catch(e){
        print(e);
        showToast(context2!,e.toString(),true);
      }
    }



  }
}
