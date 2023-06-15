import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:Yumgott/UI/Home/ShortVideos/pages/ShortVideos.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/bloc/RestaurantHomePage_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/bloc/RestaurantHomePage_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/bloc/RestaurantHomePage_State.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantProfile/pages/RestaurantProfile.dart';
import 'package:Yumgott/UI/RestaurantHome/SettingsScreen/pages/SettingsScreen.dart';
import 'package:Yumgott/main.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:badges/badges.dart' as badges;
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';

import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RestaurantHomeScreen extends StatefulWidget {
  const RestaurantHomeScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantHomeScreen> createState() => _RestaurantHomeScreenState();
}


class _RestaurantHomeScreenState extends State<RestaurantHomeScreen> {
  final _RestaurantHomePageBloc = sl<RestaurantHomePageBloc>();
  final _HomePageBlocBloc = sl<HomePageBloc>();
  final pref = sl<IPrefsHelper>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _Controller = TextEditingController();
  PanelController controller = PanelController();
  String? _currentAddress;
  Position? _currentPosition;
  ScrollController controllers = ScrollController();
  TextEditingController Controlerrr = TextEditingController();
  String User_id = "";

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      _currentPosition = position;
      _getAddressFromLatLng(_currentPosition!);
    }).catchError((e) {
      debugPrint(e);
    });
  }


  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) async {
      Placemark place = placemarks[0];

      List<Placemark> placemarkss = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );


      print(placemarkss[0]);
      print("place.postalCode: ${place.postalCode}");
      //  '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      print("_currentAddress :${_currentAddress.toString()}");
      print("_currentPosition!.latitude :${_currentPosition!.latitude.toString()}");
      print("_currentPosition!.longitude :${_currentPosition!.longitude.toString()}");


      _RestaurantHomePageBloc.add(SendLocationTobackend((b) => b
        ..Lat = _currentPosition!.latitude
        ..Lng = _currentPosition!.longitude));
    }).catchError((e) {
      debugPrint(e);
    });
  }

  @override
  void initState() {
    GetUserData();
    _getCurrentPosition();
    _RestaurantHomePageBloc.add(GetShortVidoes());
    _RestaurantHomePageBloc.add(GetAllProducts());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return WillPopScope(
        onWillPop: () async {
          _RestaurantHomePageBloc.add( ChangePage((b) => b..index = 0));
          return false;
        },
        child: BlocBuilder(
            bloc: _RestaurantHomePageBloc,
            builder: (BuildContext context, RestaurantHomePageState state) {
              return Scaffold(
                resizeToAvoidBottomInset: true,
                extendBody: true,
                body:Stack(
                  children: [


                    state.Index==0
                        ?Container()
                  //       ?ShortVideos_Screen(
                  //           () {
                  //         _RestaurantHomePageBloc.add(ChangePage((b) => b..index = 2));
                  //       },
                  //           () {
                  //             _RestaurantHomePageBloc.add(ChangePage((b) => b..index = 4));
                  //       },
                  //           () {
                  //             _RestaurantHomePageBloc.add(ChangePage((b) => b..index = 5));
                  //       },
                  //           () {
                  //         controller.open();
                  //       },
                  //       state.success! ? state.AllVidoesList!.data : null,
                  //       state.success!,
                  //           () {
                  //             _RestaurantHomePageBloc.add(GetShortVidoes());
                  //       },
                  //       state.AllPosts,
                  //     _HomePageBlocBloc,
                  //           () {},
                  // false,
                  //     _RestaurantHomePageBloc,
                  //     true
                  //   )
                        :state.Index==1
                            ?Container()
                            :state.Index ==2
                              ?Container()
                              :state.Index == 3
                                  ?RestaurantSettingsScreen()
                                  :RestaurantProfileScreen(0),



                    state.Index != 0 &&  state.Index != 4
                        ? SafeArea(
                            child: Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(top: 31.h, left: 21.w),
                                    child: Backbuttonn(() {
                                      _RestaurantHomePageBloc.add(
                                          ChangePage((b) => b..index = 0));
                                    }, Colors.black)),
                              ],
                            ),
                          )
                        : Container(),


                  ],
                ),
                bottomNavigationBar:SafeArea(
                  child: BottomAppBar(
                    color: Colors.black,
                    elevation: 0,
                    child: Container(
                      height: 45.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                          Container(
                              margin: EdgeInsets.only(left: 26.w),
                              child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    _RestaurantHomePageBloc.add(ChangePage((b) => b..index = 0));
                                  },
                                  icon: Icon(
                                    Icons.home,
                                    color:state.Index==0?Color(0xffFA3858): Colors.white,
                                    size: 25.w,
                                  ))),
                          Container(
                            margin: EdgeInsets.only(left: 48.w),
                            child: IconButton(
                                padding:EdgeInsets.zero,
                                constraints:BoxConstraints(),
                                onPressed:(){
                                  _RestaurantHomePageBloc.add(ChangePage((b) => b..index = 1));
                                },
                                icon: badges.Badge(
                                    position: badges.BadgePosition.topEnd(top: -5, end: -2),
                                    padding: EdgeInsets.all(3.w),
                                    badgeColor: Colors.white,
                                    badgeContent: Text('3',style: TextStyle(color: Colors.black,fontSize: 12.sp),),
                                    child:Icon(
                                      Icons.notifications,
                                      color:state.Index==1?Color(0xffFA3858): Colors.white,
                                      size: 23.w,
                                    ),
                                ),
                            ),
                          ),
                           Container(
                               margin: EdgeInsets.only(left: 54.w),
                               child: IconButton(
                                   padding: EdgeInsets.zero,
                                   constraints: BoxConstraints(),
                                   onPressed: () {
                                     _RestaurantHomePageBloc.add(ChangePage((b) => b..index = 2));
                                   },
                                   icon:SvgPicture.asset("Assets/images/meal.svg"
                                     ,width: 27.w,
                                   height: 27.h
                                   ,color: state.Index==2?Color(0xffFA3858): Colors.white,
                                   )
                               )),
                          Container(
                            margin: EdgeInsets.only(left: 52.w),
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  _RestaurantHomePageBloc.add(ChangePage((b) => b..index = 3));
                                },
                                icon: Icon(
                                  Icons.settings,
                                  color: state.Index==3?Color(0xffFA3858): Colors.white,
                                  size: 25.w,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 45.w, top: 5.h),
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  _RestaurantHomePageBloc.add(ChangePage((b) => b..index = 4));
                                },
                                icon: CachedImages(
                                  Raduis: 17,

                                  Image: image,
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
