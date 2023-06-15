import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/Core/widgets/CustomButton2.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_State.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';

class RestaurantListTile extends StatefulWidget {
   RestaurantListTile({Key? key ,required  this.state,required this.index}) : super(key: key);
   User state;
   int index= 0;
  @override
  State<RestaurantListTile> createState() => _RestaurantListTileState();
}

class _RestaurantListTileState extends State<RestaurantListTile> {
  int Ratting=0;
  bool is_HalfRate= false;
  @override
  void initState() {
    // TODO: implement initState
    // if (((widget.state.Ratting*10)%10)==5){
    //   Ratting = widget.state.Ratting.toInt() + 1;
    //   is_HalfRate = true;
    // }else{
    //   Ratting =  widget.state.Ratting.toInt();
    // }

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: 346.w,
      height: 74.h,
      decoration: BoxDecoration(
        color: const Color(0xfff9f7ff),
        borderRadius: BorderRadius.circular(10.0.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0d000000),
            offset: Offset(0, 3),
            blurRadius: 6.r,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(left: 14.5.w),
              child: CachedImages(Raduis: 27,Image: widget.state.Image,)),
          Container(
            margin: EdgeInsets.only(
                top: 12.h, left: 19.w),
            child: Column(
              children: [
                Container(
                  width: 137.w,
                  child: Text(
                    widget.state.name,
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
                  margin: EdgeInsets.only(top: 2.h),
                  child: Text(
                      widget.state.Bio,
                      textAlign: TextAlign.left,
                      style: Montserrat.copyWith(
                        fontSize: 10.sp,
                        color:
                        const Color(0xff3b2d2f),
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true),
                ),
                Container(
                      width: 120.w,
                      margin: EdgeInsets.only(top: 0.h,bottom: 5.h,right: 17.w),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                              'Madrid..'
                         ,//todo : make sure this doesn't overfllow
                              strutStyle: StrutStyle(height: 0.7.h),
                              textAlign: TextAlign.left,
                              style: Montserrat.copyWith(
                                fontSize: 8.sp,
                                color:const Color(0xff3b2d2f),
                                fontWeight: FontWeight.w700,
                              ),
                              maxLines: 1,
                              overflow:TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                     ),
                      SvgPicture.asset("Assets/images/location.svg",width: 9.w,height: 9.h,)

                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 89.w,
            margin: EdgeInsets.only(
                top: 14.h, right: 13.5.w, left: 19.w),
            child: Column(
              children: [

                CustomButton2(
                  // StructuHeight: 0.4,
                  // BorderRaduis: 31,
                    onPressed: () {},
                    btnColor: Color(0xffFA3858),
                    BorderColor: Color(0xffFA3858),
                    TxtColor: Colors.white,
                    SocialName: "null",
                    ButtonText: 'Follow',
                    fontsize: 15,
                    weight: FontWeight.w600,
                    HeigthBTN: 25,
                    Widthbtn: 89),
                // Container(
                //   width: 89.w,
                //   margin: EdgeInsets.only(
                //       top: 6.h, left: 6.w),
                //   child: Text(
                //     '${widget.state.Ratting.toString()} rating',
                //     textAlign: TextAlign.left,
                //     style: Montserrat.copyWith(
                //       fontSize: 7.sp,
                //       color: const Color(0xff3b2d2f),
                //       fontWeight: FontWeight.w600,
                //     ),
                //     softWrap: false,
                //   ),
                // ),
                //
                //
                // Container(
                //     width: 89.w,
                //     height: 20.h,
                //     margin: EdgeInsets.only(
                //         top: 2.h, left: 4.w),
                //     child :
                //     ScrollConfiguration(
                //         behavior: MyBehavior(),
                //         child: ListView.separated(
                //           cacheExtent: 500,
                //           physics: NeverScrollableScrollPhysics(
                //               parent: BouncingScrollPhysics()),
                //           scrollDirection: Axis.horizontal,
                //           itemCount: Ratting,
                //           itemBuilder: (BuildContext context, int index) {
                //             return             Column(
                //               children: [
                //                 Container(
                //                   width: 10.w,
                //                   height: 9.h,
                //                   child:IconButton(
                //                     onPressed:(){},
                //                     padding: EdgeInsets.all(0),
                //                     icon: Icon(
                //                       index+1==Ratting?
                //                       is_HalfRate?Icons.star_half:  Icons.star:Icons.star,
                //                       color: Colors.amber,
                //                       size: 10.w,
                //                     ),
                //                   ),
                //                 )
                //               ],
                //             );
                //           }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 0.w,); },
                //         )
                //     )
                // )

                // Container(
                //     width: 89.w,
                //     height: 20.h,
                //     child: RatingBar.builder(
                //       initialRating: 1,
                //       minRating: 1,
                //       direction: Axis.vertical,
                //       allowHalfRating: true,
                //       itemCount: 5,
                //       itemBuilder: (context, _) =>
                //             Column(
                //                                                               children: [
                //                                                                 Icon(
                //                                                   Icons.star,
                //                                                   color: Colors.amber,
                //                                                 ),
                //                                                               ],
                //                                                             ),
                //
                //
                //       onRatingUpdate: (rating) {
                //         print(rating);
                //       },
                //     )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
