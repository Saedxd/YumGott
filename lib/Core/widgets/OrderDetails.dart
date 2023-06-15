import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';

class OrderDetails extends StatefulWidget {
   OrderDetails({Key? key,required this.index}) : super(key: key);
int index= 0;
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 343.w,
      margin: EdgeInsets.only(left: 21.w),
      child: Column(
        children: [

          Container(
            //    color: Colors.red,
            width: 343.w,
            child: Row(
              children: [
                Container(
                  width: 30.w,
                  height: 30.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: border(10, 10, 10, 10),
                        ),
                        child: Center(
                          child: Text("${widget.index +1}",
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
                          'Pizza big',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: SegouUI.copyWith(
                            fontSize: 17.sp,
                            color: const Color(0xfff31350),
                            fontWeight: FontWeight.w700,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4.4.h),
                        width: 158.w,
                        child: Text(
                            'Lorem Ipsum is simply text text of the printing and'
                                'Lorem Ipsum is simply text text of the printing and'
                                'Lorem Ipsum is simply text text of the printing and'
                                'Lorem Ipsum is simply text text of the printing and',
                            textAlign: TextAlign.left,
                            style: Montserrat.copyWith(
                                fontSize: 10.sp,
                                color: const Color(0xff3b2d2f),
                                fontWeight: FontWeight.w500,
                                height: 1.4.h
                            ),
                            maxLines: 4,//todo : how many lines expected?
                            overflow: TextOverflow.ellipsis,
                            softWrap: true
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 90.w),
                        child: CircleAvatar(
                          radius: 12.r,
                          backgroundColor: Color(0xffF31350),
                          child:  Icon(Icons.delete_forever_outlined,size: 13.w,color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 7.h,),
          Container(
            width: 275.w,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("Assets/images/gratis-png-pizza-hawaiana-cocina-italiana-para-llevar-panqueques-deliciosa-pizza-removebg-preview (1).png"),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 14.h,),
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
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
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
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
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 6.w),
                            child: Text(
                              '15 m',
                              style: SegouUI.copyWith(
                                fontSize: 12.sp,
                                color: const Color(0xfff31350),
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Icon(Icons.access_time_outlined),
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
            height:64.h,
            margin: EdgeInsets.only(top: 9.4.h),
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
              physics: AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 19.5.h,
                  width: 256.w,
                  child: Container(
                    margin: EdgeInsets.only(left: 11.w,top: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          child: Text(
                            'Avocado salad',
                            textAlign: TextAlign.left,
                            style: Montserrat.copyWith(
                              fontSize: 8.sp,
                              color: const Color(0xfff31350),
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '+3.99 \$',
                              style: GoogleFonts.cairo(
                                fontSize: 8.sp,
                                color: const Color(0xfff31350),
                                fontWeight: FontWeight.w600,
                              ),
                              softWrap: false,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 9.w,right: 7.w),
                                child: Icon(Icons.info_outline,size: 10.w,)),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) { return Divider(height: 1.h,color: Color(0xff707070),); },
            ),
          )
          ,


        ],
      ),
    );
  }
}
