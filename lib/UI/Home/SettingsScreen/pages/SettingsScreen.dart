import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:Yumgott/UI/Home/TransactionsScreen/pages/TransactionsScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/SettingsRow.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/SettingsScreen/bloc/Settings_Bloc.dart';
import 'package:Yumgott/UI/Home/SettingsScreen/bloc/Settings_State.dart';


class SettingsScreen extends StatefulWidget {
  SettingsScreen();

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  final _SettingsBloc = sl<SettingsScreenBloc>();

  final pref = sl<IPrefsHelper>();
  @override
  void initState() {
    super.initState();
  }
  Future<void> setlogout() async {
    await pref.SetToken("");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var s = MediaQuery.of(context).size;
    return BlocBuilder(
        bloc: _SettingsBloc,
        builder: (BuildContext context, SettingsScreenState state) {
          return Scaffold(
            body: SafeArea(
              child:Stack(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 38.w, top: 31.4.h),
                          child: Backbuttonn(() {
                            Navigator.pop(context);
                          }, Colors.black)),
                    ],
                  ),
                  SafeArea(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 31.h),
                              child: Text(
                                'Settings',
                                style: Montserrat.copyWith(
                                  fontSize: 20.sp,
                                  color: const Color(0xff3b2d2f),
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Container(
                            width: w,
                            margin: EdgeInsets.only(top: 35.h),
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: border(0,0,30.0,30.0)
                            ),
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 47.w, top: 50.h),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            WidgetsBinding.instance.addPostFrameCallback((_) =>
                                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                                    RestaurantHomeScreen()), (Route<dynamic> route) => false));
                                          },
                                          child: Container(
                                              margin: EdgeInsets.only(top: 34.h),
                                              child: SettingsRow(
                                                text: "Account",
                                                image: "Assets/images/user (5).svg",
                                                ontap: () {},WantIcon: true,)),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            margin: EdgeInsets.only(top: 34.h),
                                            child: SettingsRow(
                                              text: "Notification",
                                              image: "Assets/images/Vector.svg",
                                              ontap: () {},WantIcon: true,),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            margin: EdgeInsets.only(top: 34.h),
                                            child: SettingsRow(
                                              text: "Transactions ",
                                              image: "Assets/images/profits.svg",
                                              ontap: () {
                                                PushNavigator(context, TransactionsScreen(),(){});
                                              },WantIcon: true,),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            margin: EdgeInsets.only(top: 34.h),
                                            child: SettingsRow(
                                              text: "Privacy and security",
                                              image: "Assets/images/lock.svg",
                                              ontap: () {},
                                              WantIcon: true,
                                            ),
                                          ),
                                        ),

                                        InkWell(
                                          onTap: ()async{
                                            await  setlogout();
                                            WidgetsBinding.instance.addPostFrameCallback((_) =>
                                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                                    Login()), (Route<dynamic> route) => false));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(top: 34.h),
                                            child: SettingsRow(
                                              text: "Logout",
                                              image: "Assets/images/exit.svg",
                                              ontap: () {},
                                              WantIcon: true,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            margin: EdgeInsets.only(top: 34.h),
                                            child: SettingsRow(
                                              text: "About",
                                              image:
                                              "Assets/images/info_information_icon_178159.svg",
                                              ontap: () {}, WantIcon: false,),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )


            ),
          );
        });
  }
}
