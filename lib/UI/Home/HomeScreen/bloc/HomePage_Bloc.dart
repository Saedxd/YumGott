import 'dart:ffi';
import 'dart:math';
import 'dart:typed_data';

import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';





class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  IRepository _repository;

  HomePageBloc(this._repository) : super(HomePageState.initail());

  @override
  HomePageState get initialState => HomePageState.initail();

  @override
  Stream<HomePageState> mapEventToState(
      HomePageEvent event,
  ) async* {
    if (event is ChangePage) {
      try {
        yield state.rebuild((b) => b
          ..Index = event.index
        );
        // final date = await _repository.AddVol(event.gender!, event.uni_sp!, event.area!, event.street!, event.phone!, event.email!,
        //     event.note!, event.full_name!, event.old!, event.noid!);
        //
        // print('get Success data $date');
        // yield state.rebuild((b) => b
        //   ..error = ""
        //   ..success = true
        //   ..isLoading = false
        //   ..AddVol.replace(date)
        // );
        // print("NO EXCEPTIONS");
      } catch (e) {
        print("EXCEPTION $e");
      }
    }
    if (event is ChangePolicyContainerApperiance) {
      try {
        yield state.rebuild((b) => b
          ..ShowPolicyContainer = event.value!
        );


        // final date = await _repository.AddVol(event.gender!, event.uni_sp!, event.area!, event.street!, event.phone!, event.email!,
        //     event.note!, event.full_name!, event.old!, event.noid!);
        //
        // print('get Success data $date');
        // yield state.rebuild((b) => b
        //   ..error = ""
        //   ..success = true
        //   ..isLoading = false
        //   ..AddVol.replace(date)
        // );
        // print("NO EXCEPTIONS");
      } catch (e) {
        print("EXCEPTION $e");
      }
    }


    // if (event is GetReels) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..AllVidoesList = null
    //     );
    //
    //     final date = await _repository.GetShortVidoes(-1,10);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..AllVidoesList.replace(date)
    //     );
    //     state.AllPosts!.clear();
    //
    //     for(int i=0;i<state.AllVidoesList!.data!.length;i++) {
    //       Video V = Video();
    //       Product pro = Product();
    //       User Publisher = User();
    //       User Restaurant = User();
    //       pro.ID = state.AllVidoesList!.data![i].product!.id!;
    //       pro.Name = state.AllVidoesList!.data![i].product!.name!;
    //       pro.Image = state.AllVidoesList!.data![i].product!.image_path!;
    //       pro.price = state.AllVidoesList!.data![i].product!.price!.toString();
    //       pro.Description = state.AllVidoesList!.data![i].product!.bio!.toString();
    //
    //    //   Publisher.Description = state.AllVidoesList!.data![i].user!.bio.toString();
    //       Publisher.ID = state.AllVidoesList!.data![i].user!.id!;
    //       Publisher.name = state.AllVidoesList!.data![i].user!.name.toString();
    //       Publisher.Image = state.AllVidoesList!.data![i].user!.photo.toString();
    //       Publisher.Email = state.AllVidoesList!.data![i].user!.email.toString();
    //
    //     //  Restaurant.Description = state.AllVidoesList!.data![i].restaurant!.bio.toString();
    //       Restaurant.ID = state.AllVidoesList!.data![i].restaurant!.id!;
    //       Restaurant.name = state.AllVidoesList!.data![i].restaurant!.name.toString();
    //       Restaurant.Image = state.AllVidoesList!.data![i].restaurant!.photo.toString();
    //       Restaurant.Email = state.AllVidoesList!.data![i].restaurant!.email.toString();
    //
    //       V.VideoUrl = state.AllVidoesList!.data![i].video_path.toString();
    //       V.City = state.AllVidoesList!.data![i].city.toString();
    //       V.CreatedAt = state.AllVidoesList!.data![i].createdAt.toString();
    //       V.Publisher = Publisher;
    //       V.Restaurant = Restaurant;
    //       V.id = state.AllVidoesList!.data![i].id.toString();
    //       V.LikeStatus = false;
    //       V.SaveStatus = false;
    //       V.LikesCount =state.AllVidoesList!.data![i].likes!.length;
    //       V.product = pro;
    //
    //
    //       state.AllPosts!.add(V);
    //     }
    //
    //
    //       yield state.rebuild((b) => b
    //       ..Posts_Likes =List.filled(state.AllVidoesList!.data!.length, false)
    //     );
    //     for(int i=0;i<state.AllVidoesList!.data!.length;i++){
    //       state.Posts_Likes_Count!.add(state.AllVidoesList!.data![i].likes!.length);
    //     }
    //
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //     );
    //
    //
    //   } catch (e) {
    //     // print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //       ..AllVidoesList = null
    //     );
    //   }
    // }

    if (event is FilterProducts) {
      try {
      yield state.rebuild((b) => b
      ..Searchsuccess = false
      );

    state.Filtered_Products!.clear();
    state.UnFiltered_Products!.forEach((Product) {

    if (Product.Name.toLowerCase().contains(event.Keyword!)){
      if (state.SelectedEvaluationValue!.isNotEmpty){
        if (Product.Ratting.toInt()== int.parse(state.SelectedEvaluationValue.toString()[0]))
       state.Filtered_Products!.add(Product);
      }

      if (state.SelectedPriceValue!.isNotEmpty){
        if (state.SelectedPriceValue.toString()!="Other")
        if (double.parse(Product.price.toString()) <= state.End_Range_Price![event.Price_index!] && double.parse(Product.price.toString()) >= state.start_Range_Price![event.Price_index!] )
          state.Filtered_Products!.add(Product);
      }


      if (state.SelectedPriceValue!.isEmpty &&state.SelectedEvaluationValue!.isEmpty){
        state.Filtered_Products!.add(Product);
      }

    }

    });

    yield state.rebuild((b) => b
    ..Searchsuccess = true
    );


      } catch (e) {
        print('get Error $e');
        // yield state.rebuild((b) => b
        //   ..isLoading = false
        //   ..error = ""
        //   ..success = false
        //   ..data = null
        // );
      }
    }

    if (event is GetAllProducts) {
      try {
        yield state.rebuild((b) => b
          ..error = ""
          ..GetProductsSucess = false
          ..GetProductsIsLoading = true
          ..GetAllProducts = null
        );

        state.UnFiltered_Products!.clear();
        state.Filtered_Products!.clear();
        final date = await _repository.GetAllProducts();

        print('get Success data $date');
        yield state.rebuild((b) => b
          ..GetAllProducts.replace(date)
        );


        for(int i=0;i<state.GetAllProducts!.data!.length;i++){
          Product pro = Product();
          pro.Image = state.GetAllProducts!.data![i].photo_main.toString();
          pro.Description = state.GetAllProducts!.data![i].description.toString();
          pro.Name = state.GetAllProducts!.data![i].name.toString();
          pro.price = state.GetAllProducts!.data![i].price.toString();
          pro.ID = state.GetAllProducts!.data![i].id!;
          pro.discount = state.GetAllProducts!.data![i].discount!;
         // pro.Ratting =  state.GetAllProducts!.data![i].!;
           pro.is_Active =  state.GetAllProducts!.data![i].is_active==1;


          state.UnFiltered_Products!.add(pro);
          state.Filtered_Products!.add(pro);
        }


        yield state.rebuild((b) => b
          ..error = ""
          ..GetProductsSucess = true
          ..GetProductsIsLoading = false
        );
        print("NO EXCEPTIONS");
      } catch (e) {
        print("EXCEPTION $e");
        yield state.rebuild((b) => b
          ..error = "error"
          ..GetProductsSucess = false
          ..GetProductsIsLoading = false
          ..GetAllProducts = null
        );
      }

    }


    // if (event is SendLocationTobackend) {
    //   try {
    //
    //     User user = User();
    //     user.lng = event.Lng!;
    //     user.lat = event.Lat!;
    //
    //     // final date = await _repository.UpdateUser(user,ID);
    //
    //
    //   } catch (e) {
    //     print("EXCEPTION $e");
    //
    //   }
    // }
    if (event is SwitchLikeBUtton) {
      try {
          yield state.rebuild((b) => b
          ..Like_isLoading= true
        );
        yield state.rebuild((b) => b
          ..AllPosts![event.index!].LikeStatus  = !state.AllPosts![event.index!].LikeStatus!
        );


        if (state.AllPosts![event.index!].LikeStatus!){
          yield state.rebuild((b) => b
            ..AllPosts![event.index!].LikesCount = state.AllPosts![event.index!].LikesCount !+ 1
          );
        }else{
          yield state.rebuild((b) => b
            ..AllPosts![event.index!].LikesCount = state.AllPosts![event.index!].LikesCount  !- 1
          );
        }



        yield state.rebuild((b) => b
          ..Like_isLoading= false
        );
          // final date = await _repository.LikeShortVideo(event.important_id!,event.received_user!,event.MyUsername!);
          // print(date);




      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is SwitchSaveButton) {
      try {
        yield state.rebuild((b) => b
          ..Save_isLoading= true
        );
        yield state.rebuild((b) => b
          ..AllPosts![event.index!].SaveStatus  = !state.AllPosts![event.index!].SaveStatus!
        );



        // if (state.AllPosts![event.index!].LikeStatus!){
        //   yield state.rebuild((b) => b
        //     ..AllPosts![event.index!].LikesCount = state.AllPosts![event.index!].LikesCount !+ 1
        //   );
        // }else{
        //   yield state.rebuild((b) => b
        //     ..AllPosts![event.index!].LikesCount = state.AllPosts![event.index!].LikesCount  !- 1
        //   );
        // }



        yield state.rebuild((b) => b
          ..Save_isLoading= false
        );
        // final date = await _repository.LikeShortVideo(event.important_id!,event.received_user!,event.MyUsername!);
        // print(date);




      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is ChangeSelectedPriceValue) {
      try {
          yield state.rebuild((b) => b
          ..SelectedPriceValue= event.value
        );


      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is ChangeSelectedEvaluationValue) {
      try {
        yield state.rebuild((b) => b
          ..SelectedEvaluationValue= event.value
        );


      } catch (e) {
        print('get Error $e');
      }
    }
  }
}
