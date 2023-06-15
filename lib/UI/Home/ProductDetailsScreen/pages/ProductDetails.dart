import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/ProductDetailsScreen/bloc/ProductDetails_Bloc.dart';
import 'package:Yumgott/UI/Home/ProductDetailsScreen/bloc/ProductDetails_Event.dart';
import 'package:Yumgott/UI/Home/ProductDetailsScreen/bloc/ProductDetails_State.dart';


class ProductDetails extends StatefulWidget {
   ProductDetails({Key? key, required this.Data}) : super(key: key);
  Product? Data;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  final pref = sl<IPrefsHelper>();
  final _ProductDetailsBloc = sl<ProductDetailsBloc>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _ProductDetailsBloc,
        builder: (BuildContext context, ProductDetailsState state) {
          return Scaffold(
            backgroundColor: Color(0xffEDEDF1),
            body: Stack(
                children: [
                  Container(
                    width: w,
                    height: 283.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 6),
                          blurRadius: 10.r,
                        ),
                      ],
                    ),
                    child:CachedNetworkImage(
                      imageUrl:  widget.Data!.Image,
                      imageBuilder: (context, imageProvider) =>
                          Container(
                            decoration: BoxDecoration(
                              image:DecorationImage(image:imageProvider,fit: BoxFit.fill),
                            ),
                          ),
                      placeholder: (context, url) => Container(child:   Center(child: CircularProgressIndicator()),),
                      errorWidget: (context, url, error) => Container(child: Center(child: Icon(Icons.error))),
                    )
                  ),
                  SafeArea(
                    child:
                        Container(
                            margin: EdgeInsets.only(
                                top: 20.4.h, left: 21.w),
                            child:Backbuttonn((){
                              print("clickedd");
                              Navigator.pop(context);
                              },Colors.white) ),

                  ),
                  SafeArea(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 61.w,top: 26.h),
                          child: Text(
                            'Product details',
                            style: Montserrat.copyWith(
                              fontSize: 20.sp,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                            ),
                            softWrap: false,
                          ),
                        ),

                      ],
                    ),
                  ),
                  SafeArea(
                    child:
                      Container(
                        width: w,
                        height: h,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 225.h,left: 293.w),
                              child:
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 26.5.r,
                                    child: SvgPicture.asset("Assets/images/heart (2).svg",width: 27.w,),
                                  ),

                            ),
                            Container(
                              margin: EdgeInsets.only(left: 31.w),
                              child: Row(
                                children: [
                                  Container(
                                    width: 220.w,
                                    child: Column(
                                      children: [

                                        Container(
                                          width: 220.w,
                                          child: Row(
                                            children: [

                                              Container(
                                          width: 220.w,
                                                child: Text(
                                                 widget.Data!.Name
                                                  ,
                                                  strutStyle: StrutStyle(height: 1.6.h),
                                                  style: Montserrat.copyWith(
                                                    fontSize: 18.sp,
                                                    color: const Color(0xff242020),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  softWrap: true,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 152.w,
                                              margin: EdgeInsets.only(
                                                top: 8.h,),
                                              child: Text(
                                                '4.5 rating',
                                                textAlign: TextAlign.left,
                                                style: Montserrat.copyWith(
                                                  fontSize: 7.sp,
                                                  color: const Color(0xff3b2d2f),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                softWrap: false,
                                              ),
                                            ),

                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                                width: 152.w,
                                                height: 20.h,
                                                margin: EdgeInsets.only(
                                                  top: 2.h,),
                                                child :
                                                ScrollConfiguration(
                                                    behavior: MyBehavior(),
                                                    child: ListView.separated(
                                                      cacheExtent: 500,
                                                      physics: NeverScrollableScrollPhysics(
                                                          parent: BouncingScrollPhysics()),
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: 5,
                                                      itemBuilder: (BuildContext context, int index) {
                                                        return             Column(
                                                          children: [
                                                            Container(
                                                              width: 10.w,
                                                              height: 9.h,
                                                              child :
                                                              IconButton(
                                                                onPressed: (){},
                                                                padding: EdgeInsets.all(0),
                                                                icon:  Icon(
                                                                  Icons.star,
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

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  Column(
                                    children: [

                                      Container(
                                        margin: EdgeInsets.only(left: 54.w),
                                        child: Text.rich(
                                          TextSpan(
                                            style:Montserrat.copyWith(
                                              height: 1.5.h,
                                              fontSize: 14.sp,
                                              color: const Color(0xff3b2d2f),
                                            ),

                                            children: [
                                              TextSpan(
                                                text: '\$ ${widget.Data!.price}\n',
                                                style: Montserrat.copyWith(
                                                  height: 1.5.h,
                                                  fontSize: 19.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'free shipping',
                                                style: Montserrat.copyWith(
                                                  height: 1.5.h,
                                                  fontSize: 7.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          textHeightBehavior: TextHeightBehavior(
                                              applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ],
                                  )


                                ],
                              ),
                            ),
                           SingleChildScrollView(
                             child: Column(
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(left: 31.w,top: 8.h),
                                     child: Row(
                                       children: [
                                         CircleAvatar(backgroundColor: Colors.black,radius: 3.5,),
                                         Container(
                                           margin: EdgeInsets.only(left: 7.w),
                                           child: Text(
                                             'details',
                                             style: Montserrat.copyWith(
                                               fontSize: 13.sp,
                                               color: const Color(0xff3b2d2f),
                                               fontWeight: FontWeight.w600,
                                             ),
                                             softWrap: true,
                                           ),
                                         )
                                       ],
                                     ),
                                   ),
                                   Container(
                                       width: w,
                                       margin: EdgeInsets.only(top: 6.h,left: 14.w),
                                       child:
                                       Column(
                                         children: [
                                           Container(
                                             width: 295.w,
                                             child: Text(
                                              widget.Data!.Description,
                                               strutStyle: StrutStyle(height: 1.h),
                                               style: Montserrat.copyWith(
                                                   fontSize: 9.sp,
                                                   color: const Color(0xff3b2d2f),
                                                   fontWeight: FontWeight.w500,
                                                   height: 1.4.h
                                               ),
                                               overflow: TextOverflow.ellipsis,
                                               maxLines: 4,
                                               softWrap: true,
                                             ),
                                           ),

                                         ],
                                       )),

                                   Container(
                                     width: 266.w,
                                     decoration: BoxDecoration(
                                       color: Color(0xffffffff),
                                       borderRadius: BorderRadius.circular(5.0.r),
                                       boxShadow: [
                                         BoxShadow(
                                           color: Color(0x0f000000),
                                           offset: Offset(0, 1),
                                           blurRadius: 6.r,
                                         ),
                                       ],
                                     ),

                                     child:  ScrollConfiguration(
                                          behavior: MyBehavior(),
                                          child: ListView.separated(
                                          cacheExtent: 500,
                                          physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (BuildContext context, int index){
                                            return Container();
                                          }, separatorBuilder: (BuildContext context, int index) {
                                            return SizedBox(height: 1.h,);
                                          },
                                          )
                                     )
                                   ),

                                   Container(
                                     margin: EdgeInsets.only(left: 35.w,top: 19.h),
                                     child: Row(
                                       children: [
                                         Container(
                                           child: Text(
                                             'addition',
                                             style:Montserrat.copyWith(
                                               fontSize: 13.sp,
                                               color: const Color(0xff3b2d2f),
                                               fontWeight: FontWeight.w600,
                                             ),
                                             softWrap: false,
                                           ),
                                         ),

                                         InkWell(
                                           onTap: (){
                                             if (state.Counter!=0)
                                               _ProductDetailsBloc.add(DecreamentCounter());


                                           },
                                           child: Container(
                                             margin: EdgeInsets.only(left: 10.w),
                                             child: CircleAvatar(
                                               radius: 8.r,
                                               backgroundColor: Color(0xffFA3858),
                                               child: Icon(Icons.remove,size: 9.w,color: Colors.white,),
                                             ),
                                           ),
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(left: 9.w),
                                           child: Text(
                                             state.Counter.toString(),
                                             style: Montserrat.copyWith(
                                               fontSize: 13.sp,
                                               color: const Color(0xff3b2d2f),
                                               fontWeight: FontWeight.w600,
                                             ),
                                             softWrap: false,
                                           ),
                                         ),

                                         InkWell(
                                             onTap: (){
                                               _ProductDetailsBloc.add(IncreamentCounter());
                                             },
                                             child:
                                             Container(
                                               margin: EdgeInsets.only(left: 9.w),
                                               child: CircleAvatar(
                                                 radius: 8.r,
                                                 backgroundColor: Color(0xffFA3858),
                                                 child: Icon(Icons.add,size: 9.w,color: Colors.white,),
                                               ),
                                             )),
                                       ],
                                     ),
                                   ),
                                   Container(
                                       width: w,
                                       margin: EdgeInsets.only(left: 35.w,top: 8.h),
                                       child: Text.rich(
                                         TextSpan(
                                           style: Montserrat.copyWith(
                                               fontSize: 13.sp,
                                               color: const Color(0xff3b2d2f),
                                               height: 1.5.h
                                           ),
                                           children: [
                                             TextSpan(
                                               text: 'Total price : ',
                                               style: Montserrat.copyWith(
                                                   fontSize: 13.sp,
                                                   fontWeight: FontWeight.w600,
                                                   height: 1.5.h
                                               ),
                                             ),
                                             TextSpan(
                                               text: '\$ ${widget.Data!.price}',
                                               style: Montserrat.copyWith(
                                                 fontSize: 13.sp,
                                                 fontWeight: FontWeight.w600,
                                                 height: 1.5.h,
                                                 color: const Color(0xff9a8b8d),
                                               ),
                                             ),
                                           ],
                                         ),
                                         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                         softWrap: false,
                                       )
                                   ),
                                   Container(
                                       width: w,
                                       height: 82.h,
                                       margin: EdgeInsets.only(top: 18.h),
                                       child: ScrollConfiguration(
                                         behavior: MyBehavior(),
                                         child: ListView.separated(
                                           cacheExtent: 500,
                                           physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),

                                           scrollDirection: Axis.horizontal,
                                           itemCount: 10,
                                           itemBuilder: (BuildContext context, int index) {
                                             return Row(
                                               children: [
                                                 index == 0
                                                     ? SizedBox(width: 40.w)
                                                     : Container(),
                                                 Container(
                                                   height: 82.h,
                                                   width: 53.w,
                                                   child: Column(
                                                     children: [
                                                       Container(
                                                         width: 53.w,
                                                         height: 51.h,
                                                         decoration: BoxDecoration(
                                                           // image: DecorationImage(
                                                           //   image: const AssetImage(''),
                                                           //   fit: BoxFit.cover,
                                                           // ),
                                                           color: Colors.red,
                                                           borderRadius: BorderRadius.circular(10.0),
                                                           boxShadow: [
                                                             BoxShadow(
                                                               color: const Color(0x29000000),
                                                               offset: Offset(0, 3),
                                                               blurRadius: 6,
                                                             ),
                                                           ],
                                                         ),
                                                         child: Image.asset(
                                                           "Assets/images/burger2.png",fit: BoxFit.fill,),
                                                       ),
                                                       Container(
                                                         width: 53.w,
                                                         margin: EdgeInsets.only(top: 5.h,left: 5.w),
                                                         child: Text(
                                                           'Big Burger',
                                                           style: Montserrat.copyWith(
                                                             fontSize: 7.sp,
                                                             color: const Color(0xff242020),
                                                             fontWeight: FontWeight.w700,
                                                           ),
                                                           softWrap: false,
                                                         ),
                                                       ),
                                                       Container(
                                                         width: 53.w,
                                                         margin: EdgeInsets.only(top: 3.h,left: 5.w),
                                                         child: Text(
                                                           '15.00 \$',
                                                           style: Montserrat.copyWith(
                                                             fontSize: 7.sp,
                                                             color: const Color(0xff242020),
                                                             fontWeight: FontWeight.w700,
                                                           ),
                                                           softWrap: false,
                                                         ),
                                                       ),

                                                     ],
                                                   ),
                                                 ),
                                               ],
                                             );
                                           },
                                           separatorBuilder: (BuildContext context, int index) {
                                             return SizedBox(
                                               width: 6.w,
                                             );
                                           },
                                         ),
                                       )),
                                   Container(
                                     margin: EdgeInsets.only(left: 32.w,top: 26.h),
                                     child: Row(
                                       children: [
                                         Container(
                                           height: 38.h,
                                           width: 153.w,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(5.0.r),
                                             border: Border.all(width: 0.5.w, color: const Color(0xff707070)),
                                           ),
                                           child: Center(
                                             child:Text(
                                               'Add to cart',
                                               style: Montserrat.copyWith(
                                                   fontSize: 13.sp,
                                                   color: const Color(0xff3b2d2f),
                                                   fontWeight: FontWeight.w600,
                                                   height: 1.5.h
                                               ),
                                               softWrap: true,
                                             ),
                                           ),
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(left: 5.w),
                                           height: 38.h,
                                           width: 153.w,
                                           decoration: BoxDecoration(
                                             color: const Color(0xffFA3858),
                                             borderRadius: BorderRadius.circular(5.0.r),
                                             border: Border.all(width: 0.5.w, color: const Color(0xffFA3858)),
                                           ),
                                           child: Center(
                                               child:Text(
                                                 'place order',
                                                 style: Montserrat.copyWith(
                                                     fontSize: 13.sp,
                                                     color: Colors.white,
                                                     fontWeight: FontWeight.w600,
                                                     height: 1.5.h
                                                 ),
                                                 softWrap: true,
                                               )

                                           ),
                                         ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                           ),

                          ],
                        ),
                      ),
                  ),

                ],
              ),


          );
        });
  }
}
