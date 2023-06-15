import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:Yumgott/UI/Home/TransactionsScreen/pages/TransactionsScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/pages/MenuScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/SettingsScreen/bloc/RestaurantSettingsScreen_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/SettingsScreen/bloc/RestaurantSettingsScreen_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/SettingsRow.dart';
import 'package:Yumgott/Injection.dart';


class RestaurantSettingsScreen extends StatefulWidget {
  RestaurantSettingsScreen();

  @override
  _RestaurantSettingsScreenState createState() => _RestaurantSettingsScreenState();
}

class _RestaurantSettingsScreenState extends State<RestaurantSettingsScreen>
    with SingleTickerProviderStateMixin {
  final _SettingsBloc = sl<RestaurantSettingsScreenBloc>();
  final pref = sl<IPrefsHelper>();






  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var s = MediaQuery.of(context).size;
    List<settings>? SettingsList = [
      settings("Account","Assets/images/account-circle_1.svg",(){}),
      settings("Menu","Assets/images/interface-91.svg",(){PushNavigator(context, RestaurantMenuScreen(),(){});}),
      settings("Order","Assets/images/shopping-bag (1).svg",(){}),
      settings("Wallet","Assets/images/wallet-filled-money-tool.svg",(){}),
      settings("Settings","Assets/images/settings.svg",(){}),
      settings("Support","Assets/images/support (1).svg",(){}),
    ];

    return BlocBuilder(
        bloc: _SettingsBloc,
        builder: (BuildContext context, RestaurantSettingsScreenState state) {
          return Scaffold(
            body: SafeArea(
                child:Stack(
                  children: [
                    Container(
                      width: w,
                      height: h,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 31.h),
                            width: w,
                            child: Center(
                              child: Text(
                                'settings',
                                style:Montserrat.copyWith(
                                  fontSize: 20.sp,
                                  color: const Color(0xff3b2d2f),
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                              ),
                            ),
                          ),


                          Container(
                            margin: EdgeInsets.only(top: 81.h),
                            width: 324.w,
                            height: 528.h,
                            child: ScrollConfiguration(
                                behavior: MyBehavior(),
                                child: GridView.builder(
                                    cacheExtent: 500,
                                    shrinkWrap: true,
                                    physics: AlwaysScrollableScrollPhysics(),
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: (7 / 6.1),
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10
                                    ),
                                    itemCount: SettingsList.length,
                                    itemBuilder: (BuildContext ctx, index) {
                                      //print(state.GetGender!.genders![index].image!.image.toString());
                                      return Material(
                                        child: InkWell(
                                          onTap: (){
                                            SettingsList[index].Ontap!.call();
                                          },
                                          child: Container(
                                            width: 150.w,
                                            height: 150.h,
                                            decoration: BoxDecoration(
                                               color:  Color(0xffF5F5F5),
                                              borderRadius: BorderRadius.circular(12.0.r),
                                              boxShadow:[BoxShadow(
                                                color: const Color(0x1a000000),
                                                offset: Offset(0, 3),
                                                blurRadius: 6.r,
                                              ),],
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                Center(
                                                  child: Container(
                                                    width: 67.w,
                                                      height: 67.h,
                                                      margin: EdgeInsets.only(top: 25.h),
                                                      child: SvgPicture.asset(SettingsList[index].Image.toString())),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 11.6.h),
                                                  child: Text(
                                                    SettingsList[index].name.toString(),
                                                    style: Montserrat.copyWith(
                                                      fontSize: 15.sp,
                                                      color: const Color(0xff3b2d2f),
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                    softWrap: false,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    })),
                          )

                        ],
                      ),
                    )
                  ],
                )
            ),
          );
        });
  }

}
