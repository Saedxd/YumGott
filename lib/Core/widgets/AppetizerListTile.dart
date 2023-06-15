import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppetizerListTile extends StatefulWidget {
  AppetizerListTile({Key? key,required this.Tile,required this.index}) : super(key: key);
  RestaurantMenuTile Tile;
  int index=0;

  @override
  State<AppetizerListTile> createState() => _AppetizerListTileState();
}

class _AppetizerListTileState extends State<AppetizerListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275.w,
      height: 51.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Row(
            children: [

              // Container(
              //     margin: EdgeInsets.only(left: 14.5.w),
              //     child:
              //     CircleAvatar(
              //       radius: 25.5.r,
              //       child:     ClipOval(
              //           child:
              //           Image.asset(
              //             "Assets/images/تنزيل (1).png",  fit: BoxFit.fill,
              //           )),
              //     )
              //   //    CircleAvatar(radius: 25.5.r,backgroundColor: Colors.grey,)
              //   // CachedImages(Raduis: 25.5,Image: "Assets/images/تنزيل (1).png",)
              // ),
              Container(
                margin: EdgeInsets.only(
                    top: 6.8.h, left: 19.w),
                child: Column(
                  children: [
                    Container(
                      width: 137.w,
                      child: Text(
                        widget.Tile.Appetizers![widget.index].name.toString(),
                        strutStyle: StrutStyle(height: 1.3.h),
                        textAlign: TextAlign.left,
                        style: Montserrat.copyWith(
                          fontSize: 15.sp,
                          color: const Color(0xff242020),
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                    Container(
                      width: 137.w,
                      height: 13.h,
                      margin: EdgeInsets.only(top: 2.h),
                      child: Text(
                          widget.Tile.Appetizers![widget.index].info.toString(),
                          textAlign: TextAlign.left,
                          style: Montserrat.copyWith(
                              fontSize: 10.sp,
                              color: const Color(0xff3b2d2f),
                              fontWeight: FontWeight.w500,
                              height: 1.5.h
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child:Text(
              '\$ ${ widget.Tile.Appetizers![widget.index].price.toString()}',
              strutStyle: StrutStyle(height: 1.4.h),
              style:Montserrat.copyWith(
                fontSize: 17.sp,
                color: const Color(0xff3b2d2f),
                fontWeight: FontWeight.w700,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          )

        ],
      ),
    );
  }
}
