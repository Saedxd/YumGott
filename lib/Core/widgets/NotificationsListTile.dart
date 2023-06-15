import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_State.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:timeago/timeago.dart' as timeago;
class NotificationListTile extends StatefulWidget {
  NotificationListTile({Key? key ,required this.state}) : super(key: key);
  notification state;
  @override
  State<NotificationListTile> createState() => _NotificationListTileState();
}

class _NotificationListTileState extends State<NotificationListTile> {

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: 342.w,
      height: 73.h,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 14.5.w,top: 10.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                height: 58.h,
           //     color: Colors.red,
                child: Row(
                  children: [
                    Container(
                        child: CachedImages(Raduis: 27,Image: widget.state.Requesteduser_Image.toString(),)),
                    Container(
                      margin: EdgeInsets.only(
                          top: 8.h, left: 19.w),
                      child: Column(
                        children: [
                          Container(
                            width: 137.w,
                            child: Text(
                              widget.state.title.toString(),
                              strutStyle: StrutStyle(height: 1.3.h),
                              textAlign: TextAlign.left,
                              style: Montserrat.copyWith(
                                fontSize: 15.sp,
                                color: const Color(0xff3b2d2f),
                                fontWeight: FontWeight.w700,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),

                          Container(
                            width: 137.w,
                            height: 26.h,
                            margin: EdgeInsets.only(top: 5.h),
                            child: Text(
                                widget.state.Body.toString(),
                                textAlign: TextAlign.left,
                                style: Montserrat.copyWith(
                                  fontSize: 10.sp,
                                  color:
                                  const Color(0xffFA3858),
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                Container(
                  height: 57.h,
             //     color: Colors.red,
                  margin: EdgeInsets.only(top: 6.h,right: 17.w),
                  child: Column(
                    children: [

                   Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(right: 3.w),
                         child: Text(
                             timeago.format(DateTime.parse(widget.state.Time.toString())),
                           style: Montserrat.copyWith(
                             fontSize: 6.sp,
                             color: const Color(0xff969595),
                             fontWeight: FontWeight.w500,
                           ),
                           softWrap: true,
                         ),
                       ),

                       Container(
                         margin: EdgeInsets.only(bottom: 2.h),
                           child: Icon(Icons.access_time_outlined,size: 8.w,color: Color(0xff707070),)),

                     ],
                   )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
