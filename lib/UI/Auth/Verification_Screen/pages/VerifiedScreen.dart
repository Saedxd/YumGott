// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lottie/lottie.dart';
//
// import 'package:Yumgott/Core/Classes/Classes.dart';
// import 'package:Yumgott/Core/Functions/Fucntions.dart';
// import 'package:Yumgott/Core/theme/theme_constants.dart';
//
// class VerifiedSuccess extends StatefulWidget {
//   VerifiedSuccess();
//   @override
//   State<VerifiedSuccess> createState() => _VerifiedSuccessState();
// }
//
//
// class _VerifiedSuccessState extends State<VerifiedSuccess> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(milliseconds: 4000), () {
//    //   PushReplacementsNavigator(context, SignUp4(widget.User));
//     });
//   }
//   //todo : Make sure Delay is working fine
//
//   @override
//   Widget build(BuildContext context) {
//     var w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: w,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//            //   AppLogoTitle(),
//               Container(
//                 margin: EdgeInsets.only(top: 108.h),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: 200.w,
//                       height: 200.h,
//                       child: Center(
//                         child: Lottie.network(
//                             'https://assets8.lottiefiles.com/packages/lf20_73gGgumUfd.json',
//                             repeat: false),
//                         //,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     PlayAnimationBuilder(
//                       tween: IntTween(begin: 0, end: 8),
//                       duration: const Duration(milliseconds: 1000),
//                       delay: const Duration(milliseconds: 1200),
//                       builder: (context, value, child) {
//                         return Text(
//                           textAlign: TextAlign.left,
//                           'Verified'.substring(0, value as int),
//                           style: Montserrat.copyWith(
//                               fontSize: 20.sp,
//                               fontWeight: FontWeight.w500,
//                               height: 1.h,
//                               color: Colors.black),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
