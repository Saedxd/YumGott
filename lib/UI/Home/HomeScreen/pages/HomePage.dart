import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/UI/Camera/TakeVideoScreen/pages/CameraScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/bloc/RestaurantHomePage_Bloc.dart';
import 'package:Yumgott/core/theme/theme_constants.dart';
import 'package:Yumgott/main.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:Yumgott/UI/Home/Notification/pages/Notifications.dart';
import 'package:Yumgott/UI/Home/Order/pages/OrderScreen.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/pages/RestaurantsScreen.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
final HomeBloc = sl<HomePageBloc>();

int CurrentVideoIndex = 0;


class _HomeScreenState extends State<HomeScreen> {
  final _RestaurantHomePageBloc = sl<RestaurantHomePageBloc>();
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
//
//       GeoData data = await Geocoder2.getDataFromCoordinates(
//           latitude: _currentPosition!.latitude,
//           longitude: _currentPosition!.longitude,
//           googleMapApiKey: "AIzaSyDMNmZ2jREhsyxQEB2tdkP213PS6pT6KWA");
      List<Placemark> placemarkss = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      //todo : continue in house
      print(placemarkss[0]);
      print("place.postalCode : ${place.postalCode}");
      //  '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      print("_currentAddress :${_currentAddress.toString()}");
      print(
          " _currentPosition!.latitude :${_currentPosition!.latitude.toString()}");
      print(
          "_currentPosition!.longitude :${_currentPosition!.longitude.toString()}");

      HomeBloc.add(SendLocationTobackend((b) => b
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
    HomeBloc.add(GetReels());
    HomeBloc.add(GetAllProducts());
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
        onWillPop:()async{
          HomeBloc.add(ChangePage((b) => b..index = 0));
          return false;
        },
        child: BlocBuilder(
            bloc: HomeBloc,
            builder: (BuildContext context, HomePageState state) {
              return Scaffold(
                resizeToAvoidBottomInset: true,
                extendBody: true,
                body:Stack(
                  children: [


                    state.Index == 0
                        ? Container()

                    // ShortVideos_Screen(
                    //         () {
                    //           HomeBloc.add(ChangePolicyContainerApperiance(
                    //               (b) => b..value = false));
                    //           HomeBloc.add(ChangePage((b) => b..index = 2));
                    //         },
                    //         () {
                    //           HomeBloc.add(ChangePolicyContainerApperiance(
                    //               (b) => b..value = false));
                    //           HomeBloc.add(ChangePage((b) => b..index = 4));
                    //         },
                    //         () {
                    //           HomeBloc.add(ChangePolicyContainerApperiance(
                    //               (b) => b..value = false));
                    //           HomeBloc.add(ChangePage((b) => b..index = 5));
                    //         },
                    //         () {
                    //           HomeBloc.add(ChangePolicyContainerApperiance(
                    //               (b) => b..value = false));
                    //           controller.open();
                    //         },
                    //       // state.success! ? state.AllVidoesList!.data : null,
                    //         state.success!,
                    //         () {
                    //           HomeBloc.add(GetShortVidoes());
                    //         },
                    //         state.AllPosts,
                    //         HomeBloc,
                    //         () {
                    //           HomeBloc.add(ChangePolicyContainerApperiance(
                    //               (b) =>
                    //                   b..value = !state.ShowPolicyContainer!));
                    //         },
                    //         state.ShowPolicyContainer!,
                    //     _RestaurantHomePageBloc,
                    //     false
                    // )

                        : state.Index == 1

                            ? NotificationsScreen()
                            : state.Index == 2
                                ? Container()
                    // RestaurantProfileScreen(state
                    //                 .AllVidoesList!
                    //                 .data![CurrentVideoIndex]
                    //                 .user!
                    //                 .id!)
                                : state.Index == 3
                                    ? UserProfileScreen()
                                    : state.Index == 4
                                        ? RestaurantsScreen()
                                        : state.Index == 5
                                            ? Container()
                    // HisUserProfileScreen(
                    //                             state
                    //                                 .AllVidoesList!
                    //                                 .data![CurrentVideoIndex]
                    //                                 .user!
                    //                                 .id!,
                    //                           )
                                            : state.Index == 6
                                               ? CameraScreen(
              GoBack: () {
              HomeBloc.add(ChangePage(
              (b) => b..index = 0));
              },
              )
                                               : OrderScreen(),



                    state.Index != 0
                        ? SafeArea(
                            child: Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(top: 31.h, left: 21.w),
                                    child: Backbuttonn(() {
                                      HomeBloc.add(
                                          ChangePage((b) => b..index = 0));
                                    }, Colors.black)),
                              ],
                            ),
                          )
                        : Container(),

                    DropDownButton(controller, HomeBloc, context, (value) {
                      print(value);
                      // HomeBloc.add(FilterProducts((b) => b..Keyword = value));
                    }, Controlerrr),
                    state.ShowPolicyContainer!
                        ? Positioned(
                            bottom: 0,
                            child: SafeArea(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 35.h),
                                width: w,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 344.w,
                                        height: 252.75.h,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                border(30, 30, 30, 30)),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 14.h,
                                                  left: 101.w,
                                                  bottom: 7.h),
                                              child: Row(
                                                children: [
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                        right: 12.w,
                                                      ),
                                                      child: Icon(
                                                        Icons.info,
                                                        color: Colors.black,
                                                      )),
                                                  Container(
                                                    child: Text(
                                                      'Usage policy',
                                                      style: GoogleFonts.cairo(
                                                        fontSize: 18.sp,
                                                        color: const Color(
                                                            0xff000000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      softWrap: true,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    left: 18.5.w,
                                                    right: 18.5.w),
                                                child: Divider(
                                                  height: 1.h,
                                                  color: Colors.grey,
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    top: 24.1.h, left: 19.w),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 7.r,
                                                          backgroundColor:
                                                              Colors.grey,
                                                        ),
                                                        Container(
                                                          width: 274.w,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 6.w),
                                                          child: Text(
                                                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
                                                            style: Montserrat.copyWith(
                                                                fontSize: 8.sp,
                                                                color: const Color(
                                                                    0xff000000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.3.h),
                                                            softWrap: true,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 16.h,
                                                    ),
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 7.r,
                                                          backgroundColor:
                                                              Colors.grey,
                                                        ),
                                                        Container(
                                                          width: 274.w,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 6.w),
                                                          child: Text(
                                                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
                                                            style: Montserrat.copyWith(
                                                                fontSize: 8.sp,
                                                                color: const Color(
                                                                    0xff000000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.3.h),
                                                            softWrap: true,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 16.h,
                                                    ),
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 7.r,
                                                          backgroundColor:
                                                              Colors.grey,
                                                        ),
                                                        Container(
                                                          width: 274.w,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 6.w),
                                                          child: Text(
                                                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
                                                            style: Montserrat.copyWith(
                                                                fontSize: 8.sp,
                                                                color: const Color(
                                                                    0xff000000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.3.h),
                                                            softWrap: true,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 16.h,
                                                    ),
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 7.r,
                                                          backgroundColor:
                                                              Colors.grey,
                                                        ),
                                                        Container(
                                                          width: 274.w,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 6.w),
                                                          child: Text(
                                                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
                                                            style: Montserrat.copyWith(
                                                                fontSize: 8.sp,
                                                                color: const Color(
                                                                    0xff000000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.3.h),
                                                            softWrap: true,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                            InkWell(
                                              onTap: () async {
                                                HomeBloc.add(
                                                    ChangePolicyContainerApperiance(
                                                        (b) =>
                                                            b..value = false));
                                                // await availableCameras().then((value) async{
                                                //   cameras = await value;
                                                HomeBloc.add(ChangePage(
                                                    (b) => b..index = 6));
                                                // });
                                              },
                                              child: Container(
                                                child: Text("Next"),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SvgPicture.string(
                                        '<svg viewBox="-732.0 1147.6 21.0 37.4" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, -711.0, 1185.0)" d="M 10.5 0 L 21 37.40659332275391 L 0 37.40659332275391 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                        allowDrawingOutsideViewBox: true,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                floatingActionButton:SizedBox(child:RemoveHighlight(
                  FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      onPressed: () async {
                        HomeBloc.add(ChangePolicyContainerApperiance(
                                (b) => b..value = !state.ShowPolicyContainer!));

                        // PushNavigator(context, MenuScreen());
                      },
                      elevation: 0.0,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 52.w,
                                  height: 52.h,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top: 0.h,
                                          left: 0,
                                          right: 0,
                                          //  bottom: 0,
                                          child: Container(
                                              child: SvgPicture.asset(
                                                "Assets/images/diaphragm.svg",
                                                color: Colors.white,
                                                width: 52.w,
                                                height: 52.h,
                                              ))),
                                      //   ,
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 3.h,
                            right: 2.w,
                            child: Container(
                                width: 17.w,
                                height: 18.h,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    HomeBloc.add(
                                        ChangePolicyContainerApperiance((b) => b
                                          ..value =  !state.ShowPolicyContainer!));

                                  },
                                  icon: SvgPicture.asset(
                                      "Assets/images/info_information_icon_178159.svg"),
                                )),
                          ),
                        ],
                      )
//workTime: {
//       from: Date,
//       to: Date,
//     },
                    //
                    // CircleAvatar(
                    //   radius: 30.r,
                    //   backgroundColor: Colors.white,
                    //   child: CircleAvatar(
                    //     radius: 25.r,
                    //     backgroundColor: Colors.transparent,
                    //     child: SvgPicture.asset("Assets/images/diaphragm.svg",color: Colors.black,),
                    //   ),
                    // )
                  ),
                )),
                floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
                bottomNavigationBar:SafeArea(
                  child: BottomAppBar(
                    color: Colors.black,
                    shape: CircularNotchedRectangle(),
                    notchMargin: 0.1,
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
                                    HomeBloc.add(
                                        ChangePolicyContainerApperiance(
                                            (b) => b..value = false));
                                    HomeBloc.add(
                                        ChangePage((b) => b..index = 0));
                                  },
                                  icon: Icon(
                                    Icons.home,
                                    color:state.Index==0?Color(0xffFA3858): Colors.white,
                                    size: 22.w,
                                  ))),
                          Container(
                            margin: EdgeInsets.only(left: 48.w),
                            child: IconButton(
                                padding:EdgeInsets.zero,
                                constraints:BoxConstraints(),
                                onPressed:(){
                                  HomeBloc.add(ChangePolicyContainerApperiance((b) => b..value = false));
                                  HomeBloc.add(ChangePage((b) => b..index = 1));
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
                            margin: EdgeInsets.only(left: 132.w),
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  HomeBloc.add(ChangePolicyContainerApperiance(
                                      (b) => b..value = false));
                            //      PushNavigator(context, OrderScreen());
                                  HomeBloc.add(
                                      ChangePage((b) => b..index = 7));

                                },
                                icon: Icon(
                                  Icons.shopping_bag_outlined,
                                  color:state.Index==7?Color(0xffFA3858): Colors.white,
                                  size: 23.w,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 46.w, top: 5.h),
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  HomeBloc.add(ChangePolicyContainerApperiance(
                                      (b) => b..value = false));
                                  HomeBloc.add(
                                      ChangePage((b) => b..index = 3));
                                },
                                icon: CachedImages(
                                  Raduis: 17,
                                  Image: image,
                                )),
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
