import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/Core/widgets/CustomButton2.dart';
import 'package:Yumgott/core/theme/theme_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ProductListTile extends StatefulWidget {
   ProductListTile({Key? key,required this.DATA}) : super(key: key);
  Product? DATA;
  @override
  State<ProductListTile> createState() => _ProductListTileState();
}

class _ProductListTileState extends State<ProductListTile> {

  int Ratting=0;
  bool is_HalfRate= false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (((widget.DATA!.Ratting*10)%10)==5){
      Ratting = widget.DATA!.Ratting.toInt() + 1;
      is_HalfRate = true;
    }else{
      Ratting =  widget.DATA!.Ratting.toInt();
    }
    print(Ratting);
  }


  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: 318.w,
      height: 58.h,
      decoration: BoxDecoration(
        color:Colors.transparent
      ),
      child: Row(
        children: [
          CachedImages(Image: widget.DATA!.Image,Raduis: 27,),
          Container(
            margin: EdgeInsets.only(
               left: 19.w),
            child: Column(
              children: [
                Container(
                  width: 137.w,
                  margin: EdgeInsets.only(top: 3.h),
                  child: Text(

                    widget.DATA!.Name
                    ,
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
                  margin: EdgeInsets.only(top: 5.2.h),
                  child: Text(widget.DATA!.Description,
                      textAlign: TextAlign.left,
                      style: Montserrat.copyWith(
                        fontSize: 10.sp,
                        color: const Color(0xff3b2d2f),
                        fontWeight: FontWeight.w500,
                        height: 1.45.h
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true),
                ),
              ],
            ),
          ),
          Container(
            width: 89.w,
            height: 74.h,
            margin: EdgeInsets.only(left: 19.w),

            child: Column(
              children: [


                CustomButton2(
                    // StructuHeight: 0.4,
                    // BorderRaduis: 18,
                    onPressed: () {},
                    btnColor: Colors.white,
                    BorderColor: Colors.white,
                    TxtColor: Color(0xffFA3858),
                    SocialName: "null",
                    ButtonText: 'Add',
                    fontsize: 15,
                    weight: FontWeight.w600,
                    HeigthBTN: 25,
                    Widthbtn: 89),
                Container(
                  width: 89.w,
                  margin: EdgeInsets.only(
                      top: 6.h, left: 6.w),
                  child: Text(
                    '${Ratting} rating',
                    textAlign: TextAlign.left,
                    style: Montserrat.copyWith(
                      fontSize: 7.sp,
                      color: const Color(0xff3b2d2f),
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                ),


                Container(
                    width: 89.w,
                    height: 11.h,
                    margin: EdgeInsets.only(
                        top: 6.h, left: 4.w),
                    child :
                    ScrollConfiguration(
                        behavior:
                        MyBehavior(),
                        child: ListView.separated(
                          cacheExtent: 500,
                          physics: NeverScrollableScrollPhysics(
                              parent: BouncingScrollPhysics()),
                          scrollDirection: Axis.horizontal,
                          itemCount: Ratting,
                          itemBuilder: (BuildContext context, int index) {
                            return             Column(
                              children: [
                                Container(
                                  width: 10.w,
                                  height: 9.h,
                                  child:IconButton(
                                    onPressed:(){},
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(
                                      index+1==Ratting?
                                      is_HalfRate?Icons.star_half:  Icons.star:Icons.star,
                                      color: Colors.amber,
                                      size: 10.w,
                                    ),
                                  ),
                                )
                              ],
                            );
                          }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 0.w,); },
                        )
                    )
                ),

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
