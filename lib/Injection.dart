// ignore_for_file: constant_identifier_names, file_names
import 'package:Yumgott/App/Bloc/App_Bloc.dart';
import 'package:Yumgott/UI/Auth/ForgetPassword_Screen/bloc/ForgotPassword_bloc.dart';
import 'package:Yumgott/UI/Auth/NewPassword_Screen/bloc/NewPassword_bloc.dart';
import 'package:Yumgott/UI/Auth/Verification_Screen/bloc/Verification_bloc.dart';
import 'package:Yumgott/UI/Camera/DisplayVideoScreen/bloc/DisplayVideo_Bloc.dart';
import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_Bloc.dart';
import 'package:Yumgott/UI/Camera/TakeVideoScreen/bloc/Camera_Bloc.dart';
import 'package:Yumgott/UI/Home/CategoryRestaurantsScreen/bloc/CategoryRestaurants_Bloc.dart';
import 'package:Yumgott/UI/Home/TransactionsScreen/bloc/Transactions_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/bloc/AddAppetizers_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/AddProductScreen/bloc/AddProductScreen_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/EditRestaurantProfile/bloc/EditRestaurantProfile_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/MapScreen/bloc/MapScreenBloc.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/OrderScreen/bloc/RestaurantOrderScreen_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/bloc/RestaurantHomePage_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantProfile/bloc/RestaurantProfile_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/SettingsScreen/bloc/RestaurantSettingsScreen_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/bloc/Wallet_Bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:Yumgott/UI/Auth/Login_screen/bloc/login_bloc.dart';
import 'package:Yumgott/UI/Auth/SignUp_Screen/bloc/SignUp_bloc.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:Yumgott/UI/Home/MenuScreen/bloc/Menu_Bloc.dart';
import 'package:Yumgott/UI/Home/Notification/bloc/Notifications_Bloc.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_Bloc.dart';
import 'package:Yumgott/UI/Home/ProductDetailsScreen/bloc/ProductDetails_Bloc.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_Bloc.dart';
import 'package:Yumgott/UI/Home/SettingsScreen/bloc/Settings_Bloc.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Bloc.dart';
import 'package:Yumgott/UI/OnBoarding/Slider2/bloc/Slider_bloc.dart';
import 'package:Yumgott/UI/Profiles/HisUserProfile/bloc/hisUserProfile_Bloc.dart';
import 'Data/http_helper/Ihttp_helper.dart';
import 'Data/http_helper/http_helper.dart';
import 'Data/prefs_helper/iprefs_helper.dart';

import 'Data/prefs_helper/prefs_helper.dart';
import 'Data/repository/irepository.dart';
import 'Data/repository/repository.dart';
import 'UI/Home/LocationVidoesScreen/bloc/LocationVidoes_Bloc.dart';
import 'UI/Profiles/UserProfile/bloc/userProfile_Bloc.dart';

final sl = GetIt.instance;


const BaseUrl = "https://dash.activehb.com/api";
//const BaseUrl = "http://192.168.1.115:8080/api/v1";




Future iniGetIt() async {
  sl.registerLazySingleton(() => Dio(
      BaseOptions(baseUrl: BaseUrl, headers: {
      }, responseType: ResponseType.plain)
  ));

//DATA
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl(), sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl()));
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());


  //factory means this dependency injection will provide us with new instance of get it everytime its called
  //so sometimes we call bloc in dispose which leads stream to close so useing the same instance that means it will be closed.

  sl.registerFactory(() => loginBloc(sl()));
  sl.registerFactory(() => SignUpBloc(sl()));
  sl.registerFactory(() => SliderBloc(sl()));
  sl.registerFactory(() => HomePageBloc(sl()));
  sl.registerFactory(() => NotificationsBloc(sl()));
  sl.registerFactory(() => ShortVidoesBloc(sl()));
  sl.registerFactory(() => OrderScreenBloc(sl()));
  sl.registerFactory(() => RestaurantsScreenBloc(sl()));
  sl.registerFactory(() => UserProfileBloc(sl()));
  sl.registerFactory(() => HisUserProfileBloc(sl()));
  sl.registerFactory(() => LocationVidoesBloc(sl()));
  sl.registerFactory(() => MenuBloc(sl()));
  sl.registerFactory(() => RestaurantProfileBloc(sl()));
  sl.registerFactory(() => ProductDetailsBloc(sl()));
  sl.registerFactory(() => SettingsScreenBloc(sl()));
  sl.registerFactory(() => CategoryRestaurantsBloc(sl()));
  sl.registerFactory(() => CameraBloc(sl()));
  sl.registerFactory(() => DisplayVidoeBloc(sl()));
  sl.registerFactory(() => TransactionBloc(sl()));
  sl.registerFactory(() => ForgotPasswordBloc(sl()));
  sl.registerFactory(() => VerificationBloc(sl()));
  sl.registerFactory(() => NewPasswordBloc(sl()));
  sl.registerFactory(() => AppBloc(sl()));
  sl.registerFactory(() => SelectMediaBloc(sl()));
  sl.registerFactory(() => RestaurantHomePageBloc(sl()));
  sl.registerFactory(() => RestaurantOrderScreenBloc(sl()));
  sl.registerFactory(() => RestaurantMenuBloc(sl()));
  sl.registerFactory(() => RestaurantSettingsScreenBloc(sl()));
  sl.registerFactory(() => AddProductScreenBloc(sl()));
  sl.registerFactory(() => WalletBloc(sl()));
  sl.registerFactory(() => EditRestaurantProfileBloc(sl()));
  sl.registerFactory(() => AddAppetizersBloc(sl()));
  sl.registerFactory(() => MapScreenBloc(sl()));



}
//we use this package for dependency injection and use for connecting all our APP with each other
//for example we give in constructor this get_it in both http and repository so the object can come IN the Easy Way.

