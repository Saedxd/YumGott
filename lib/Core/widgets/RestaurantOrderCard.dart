import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_Event.dart';

class RestaurantOrderCard extends StatefulWidget {
   RestaurantOrderCard({Key? key,this.Dining_in,this.Pick_up,required this.Checkbox1Status,required this.Checkbox2Status,this.Toggle_Pick_ups,this.Toggle_Dining_ins}) : super(key: key);
VoidCallback? Dining_in;
VoidCallback? Pick_up;
Function(bool)? Toggle_Dining_ins;
Function(bool)? Toggle_Pick_ups;
bool Checkbox1Status = false;
bool Checkbox2Status = false;
  @override
  State<RestaurantOrderCard> createState() => _RestaurantOrderCardState();
}

class _RestaurantOrderCardState extends State<RestaurantOrderCard> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: 343.w,
      child: Column(
        children: [
          Container(
            width: 343.w,
            decoration: BoxDecoration(
              color: const Color(0xffF6F5F7),
              borderRadius: BorderRadius.circular(10.0.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 0),
                  blurRadius: 5.r,
                ),
              ],
            ),
            child:
            Column(
              children: [
                Container(
                  width: 343.w,
                  margin: EdgeInsets.only(top: 8.6.h, right: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Flexible(
                    fit: FlexFit.loose,
                    child:
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text(
                          'KFC Restrant'
                          ,
                          strutStyle: StrutStyle(height: 0.9.h),
                          style: Montserrat.copyWith(
                            fontSize: 9.sp,
                            color: const Color(0xff3b2d2f),
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                        ),
                      ),),
                      Container(
                        margin: EdgeInsets.only(left: 8.w),
                        child: CircleAvatar(
                          radius: 8.r,
                          child: Image.asset("Assets/images/تنزيل.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 23.h),
                  width: 343.w,
                  child:ListView.separated(
                    shrinkWrap: true,
                    cacheExtent: 500,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 343.w,
                        height: 400.3.h/2,
                        margin: EdgeInsets.only(left: 21.w),
                        child: Column(
                          children: [

                            Container(
                              height: 60.9.h,
                              width: 343.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 249.w,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 40.w,
                                          height: 55.9.h,

                                          //  color: Colors.red,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 25.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius: border(10, 10, 10, 10),
                                                ),
                                                child: Center(
                                                  child: Text("${index +1}",
                                                    style: TextStyle(color: Color(0xffF6F5F7)),),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 11.w,top: 7.h),
                                          child: Column(
                                            children: [

                                              Container(
                                                width: 158.w,
                                                child: Text(
                                                  'Pizza big'

                                                  ,
                                                  maxLines: 1,
                                                  strutStyle: StrutStyle(height: 1.5.h),
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: SegouUI.copyWith(
                                                    fontSize: 17.sp,
                                                    color: const Color(0xfff31350),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  softWrap: false,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  margin: EdgeInsets.only(top: 4.4.h),
                                                  width: 158.w,
                                                  child: Text(
                                                      'Lorem Ipsum is simply text text of the printing '
                                                          'Lorem Ipsum is simply text text of the printing '
                                                      ,
                                                      textAlign: TextAlign.left,
                                                      style: Montserrat.copyWith(
                                                          fontSize: 10.sp,
                                                          color: const Color(0xff3b2d2f),
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.4.h
                                                      ),
                                                      maxLines: 2,//todo : how many lines expected?
                                                      overflow: TextOverflow.ellipsis,
                                                      softWrap: true
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 27.w),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: (){

                                          },
                                          child: Container(
                                            child: CircleAvatar(
                                              radius: 12.r,
                                              backgroundColor: Color(0xffF31350),
                                              child:  Icon(Icons.delete_forever_outlined,size: 13.w,color: Colors.white,),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 7.h,),
                            Container(
                              width: 275.w,
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("Assets/images/gratis-png-pizza-hawaiana-cocina-italiana-para-llevar-panqueques-deliciosa-pizza-removebg-preview (1).png",width: 109.w,height: 81.h,),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 14.h,),
                                            child: Text.rich(
                                              TextSpan(
                                                style: SegouUI.copyWith(
                                                    fontSize: 6.sp,
                                                    color: const Color(0xfff31350),
                                                    decoration: TextDecoration.lineThrough
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '12',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '.99\$',
                                                    style: TextStyle(
                                                      fontSize: 4.sp,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textHeightBehavior:
                                              TextHeightBehavior(applyHeightToFirstAscent: false),
                                              softWrap: false,
                                            ),
                                          ),
                                          Container(
                                            child: Text.rich(
                                              TextSpan(
                                                style: SegouUI.copyWith(
                                                  fontSize: 17.sp,
                                                  color: const Color(0xfff31350),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '9',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '.99\$',
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                              softWrap: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 8.3.h),
                                        child: Row(
                                          children:[

                                            Container(
                                              margin: EdgeInsets.only(right: 6.w),
                                              child: Text(
                                                '60 m',
                                                style: SegouUI.copyWith(
                                                  fontSize: 12.sp,
                                                  color: const Color(0xfff31350),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                softWrap: false,
                                              ),
                                            ),
                                            Icon(Icons.access_time_outlined,size: 12.w,),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 256.w,
                              height:39.h,
                              // margin: EdgeInsets.only(top: 9.4.h),
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(5.0.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x1c000000),
                                    offset: Offset(0, 1),
                                    blurRadius: 6.r,
                                  ),
                                ],
                              ),
                              child:
                              ListView.separated(
                                cacheExtent: 500,
                                physics: AlwaysScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: 2,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: 19.5.h,
                                    width: 256.w,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 11.w,top: 4.h),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            fit: FlexFit.loose,
                                            child:
                                            Container(
                                              child: Text(
                                                'Avocado salad',
                                                textAlign: TextAlign.left,
                                                strutStyle: StrutStyle(height: 0.8.h),
                                                style: Montserrat.copyWith(
                                                  fontSize: 8.sp,
                                                  color: const Color(0xfff31350),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                softWrap: false,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),),
                                          Container(
                                            width: 55.w,
                                            child: Row(
                                              children: [

                                                Container(
                                                  margin: EdgeInsets.only(bottom: 1.3.h),
                                                  child: Text(
                                                    '+3.99 \$',
                                                    // strutStyle: StrutStyle(height: 1.h),
                                                    style: GoogleFonts.cairo(
                                                      fontSize: 8.sp,
                                                      color: const Color(0xfff31350),
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                    // overflow: TextOverflow.fade,
                                                    // maxLines: 1,
                                                    softWrap: false,
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(left: 9.w,right: 7.w),
                                                    child: Icon(Icons.info_outline,size: 7.w,)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) { return Divider(height: 1.h,color: Color(0xff707070),); },
                              ),
                            ),



                          ],
                        ),
                      );
                    },

                    separatorBuilder: (BuildContext context,
                        int index) {
                      return SizedBox(height: 27.5.h,);
                    },
                  )
                ),
                Container(
                    padding: EdgeInsets.only(left: 22.5.w,right: 2.w,),
                    child: Divider(height: 1.h,color: Color(0xff707070),)),
                Container(
                  width: 343.w,
                  margin: EdgeInsets.only(top: 12.5.h,left: 38.w),
                  child: Column(
                    children: [


                      Container(
                        width: 343.w,
                        child: Text(
                            'Total Prise :',
                            style:SegouUI.copyWith(
                              fontSize: 10.sp,
                              color: const Color(0xfff31350),
                              fontWeight: FontWeight.w700,
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.h),
                        width: 343.w,
                        child: Text(
                            'discount value',
                            style:SegouUI.copyWith(
                              fontSize: 10.sp,
                              color: const Color(0xfff31350),
                              fontWeight: FontWeight.w700,
                            )
                        ),
                      ),
                      Container(
                        width: 343.w,
                        margin: EdgeInsets.only(top: 3.h),
                        child: Text(
                            'The price after discount: ',
                            style:SegouUI.copyWith(
                              fontSize: 10.sp,
                              color: const Color(0xfff31350),
                              fontWeight: FontWeight.w700,
                            )
                        ),
                      ),

                      Container(
                        width: 343.w,
                        margin: EdgeInsets.only(top: 3.h,bottom: 20.3.h),
                        child: Text(
                            'the expected time: ',
                            style:SegouUI.copyWith(
                              fontSize: 10.sp,
                              color: const Color(0xfff31350),
                              fontWeight: FontWeight.w700,
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 49.w,top: 30.3.h),

            child: Row(
                children:[
                  RemoveHighlight(
                    InkWell(
                      onTap: widget.Dining_in,
                      child: Container(
                        child: Text(
                            'Dining in',
                            style:SegouUI.copyWith(
                              fontSize: 10.sp,
                              color: const Color(0xfff31350),
                              fontWeight: FontWeight.w700,
                            )
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xff707070),
                    ),
                    child:SizedBox(
                        height: 24.0.h,
                        width: 24.0.w,
                        child:
                        Checkbox(
                          // side: BorderSide(
                          //   color: Color(0xff707070),
                          //   width: 2.0.w
                          //     ,style: BorderStyle.solid
                          // ),


                            activeColor: Color(0xff707070),
                            checkColor: Colors.black,
                            fillColor:
                            MaterialStateProperty.resolveWith(
                                    (states) {
                                  if (states.contains(MaterialState.disabled)) {
                                    return Color(0xff707070);
                                  }
                                  return Color(0xff707070);
                                }),
                            value: widget.Checkbox1Status,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(2.0.r),
                                bottom: Radius.circular(2.0.r),
                              ),
                            ),

                            onChanged:(value){
                              widget.Dining_in!.call();
                            }
                        )),),
                  RemoveHighlight(
                    InkWell(
                      onTap: widget.Pick_up,
                      child: Container(
                        margin: EdgeInsets.only(left: 6.w),
                        child: Text(
                            'Pick Up',
                            style:SegouUI.copyWith(
                              fontSize: 10.sp,
                              color: const Color(0xfff31350),
                              fontWeight: FontWeight.w700,
                            )
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xff707070),
                    ),
                    child:SizedBox(
                        height: 24.0.h,
                        width: 24.0.w,
                        child:
                        Checkbox(
                          // side: BorderSide(
                          //   color: Color(0xff707070),
                          //   width: 2.0.w
                          //     ,style: BorderStyle.solid
                          // ),

                            activeColor: Color(0xff707070),
                            checkColor: Colors.black,
                            fillColor:

                            MaterialStateProperty.resolveWith(
                                    (states) {
                                  if (states.contains(MaterialState.disabled)) {
                                    return Color(0xff707070);
                                  }
                                  return Color(0xff707070);
                                }),
                            value: widget.Checkbox2Status,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(2.0.r),
                                bottom: Radius.circular(2.0.r),
                              ),
                            ),

                            onChanged:(value){
                              widget.Pick_up!.call();
                            }
                        )),),
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    padding: EdgeInsets.only(top: 4.h),
                    width: 84.w,
                    height: 16.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(4.0.r),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x14000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'MM/NN/YY',
                        style:Montserrat.copyWith(
                          fontSize: 10.sp,
                          color: const Color(0xff978c8e),
                          fontWeight: FontWeight.w600,
                        ),
                        softWrap: false,
                      ),
                    ),
                  )
                ]
            ),
          ),
        ],
      ),
    );
  }
}
