// ignore_for_file: must_be_immutable

import 'package:Yumgott/UI/Home/HomeScreen/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:Yumgott/UI/OnBoarding/Slider2/pages/Slider.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
   Splash({Key? key,this.ontap}) : super(key: key);
VoidCallback? ontap;
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>  with TickerProviderStateMixin{
 // AnimationController? _animationController;

  final pref = sl<IPrefsHelper>();
  String token = "";

  void GetUserr()async {
    token = await pref.getToken();
  }



  @override
  void dispose() {
   // _animationController?.dispose();
    super.dispose();
  }

  void delay() {
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => token.isEmpty ?Login():HomeScreen()));});
  }

  @override
  void initState() {
    delay();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: w,
        height: h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(
              child: Container(
                width: 186.w,
                height: 259.h,
                child:SvgPicture.asset("Assets/images/LOGO.svg"),
              ),
            ),

            // Center(
            //   child: Container(
            //  //   color: Colors.red,
            //     child:Image.asset("Assets/images/Yumgott.png"),
            //   ),
            // ),
            //
            //


          ],
        ),
      ),
    );
  }
}
