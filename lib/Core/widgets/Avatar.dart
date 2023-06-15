import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Avatar extends StatefulWidget {
   Avatar({Key? key,required this.BackgroundOutside,required this.Is_Restaurant,required this.Image, req, required this.Sucess}) : super(key: key);
Color BackgroundOutside;
bool Is_Restaurant;
 bool? Sucess;
String Image="";

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 45.r,
        backgroundColor: widget.BackgroundOutside,
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            widget.Sucess!?

         CachedImages(Raduis: 40.5,Image: widget.Image,):CircleAvatar(radius: 40.5.r,backgroundColor: Colors.grey,)

            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Row(children: [
            //     CircleAvatar(backgroundColor: Colors.green,radius: 8.r,)
            //   ],),
            // )

          ],
        )

      // Column(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //
      //       // CircleAvatar(
      //       //             radius: 40.5.r,
      //       //             backgroundColor: Colors.grey,
      //       //
      //       //             child:
      //                   // Column(
      //                   //   mainAxisAlignment: MainAxisAlignment.end,
      //                   //   children: [
      //                   //     Container(
      //                   //       margin: EdgeInsets.only(right: 10.w,bottom: 3.h),
      //                   //       child: Row(
      //                   //         mainAxisAlignment: MainAxisAlignment.end,
      //                   //         children: [
      //                   //
      //                   //           CircleAvatar(
      //                   //             radius: 8.r,
      //                   //             backgroundColor:widget.Is_Restaurant? Colors.green:Colors.transparent,
      //                   //        //     child: Image.asset(widget.Image),
      //                   //           )
      //                   //         ],
      //                   //       ),
      //                   //     )
      //                   //   ],
      //                   // ),
      //           //      ),
      //     ],
      //   ),
        );
  }

}
