// import 'package:Yumgott/models/GetAllProductsModel/ProductModel.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:Yumgott/App/app.dart';
// import 'package:Yumgott/Core/theme/theme_constants.dart';
// import 'package:Yumgott/Core/widgets/CustomButton.dart';
// import 'package:built_collection/built_collection.dart';
//
// class BigMealCard extends StatefulWidget {
//    BigMealCard({Key? key,required this.Product,required this.index}) : super(key: key);
//    BuiltList<ProductModel>? Product;
//    int index = 0;
//
//   @override
//   State<BigMealCard> createState() => _BigMealCardState();
// }
//
// class _BigMealCardState extends State<BigMealCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 145.w,
//         height: 158.w,
//         decoration: BoxDecoration(
//           color: const Color(0xffffffff),
//           borderRadius: BorderRadius.circular(10.0.r),
//           boxShadow: [
//             BoxShadow(
//               color: const Color(0x29000000),
//               offset: Offset(0, 2),
//               blurRadius: 3.r,
//             ),
//           ],
//         ),
//         child: Column(
//             children: [
//               Container(
//                 height: 73.h,
//                 width: 145.w,
//                 child: Row(
//                   children: [
//                     Container(
//                             width: 97.w,height: 73.h,
//                              margin: EdgeInsets.only(left: 24.w,top: 8.h),
//                             child:CachedNetworkImage(
//                               imageUrl:  widget.Product![widget.index].image_path.toString(),
//                               imageBuilder: (context, imageProvider) =>
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       image:DecorationImage(image:imageProvider,fit: BoxFit.contain),
//                                     ),
//                                   ),
//                               placeholder: (context, url) => Container(child:   CircularProgressIndicator(),),
//                               errorWidget: (context, url, error) => Container(child: Icon(Icons.error)),
//                             )
//                         ),
//                      Container(
//                       width: 20.w,
//                       height: 73.h,
//                       margin: EdgeInsets.only(top: 19.h),
//                       child:  ScrollConfiguration(
//                           behavior: MyBehavior(),
//                           child: ListView.separated(
//                             cacheExtent: 500,
//                             physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
//                             scrollDirection: Axis.vertical,
//                             itemCount: widget.Product![widget.index].product!.length,
//                             itemBuilder:(BuildContext context, int index) {
//                               return Image.asset(
//                                 widget.Product![widget.index].product![index].image_path.toString(),
//                                  height: 19.h,width: 20.w,);
//
//                             }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 6.h,); },
//
//                           )
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                   width: 130.w,
//                   height: 13.h,
//                   margin: EdgeInsets.only(left: 5.w,top: 9.h),
//                   child: Text(
//                       widget.Product![widget.index].name.toString(),
//                     strutStyle: StrutStyle(forceStrutHeight: true, height: 0.9.h),
//                     style:Montserrat.copyWith(
//                       fontSize: 10.sp,
//                       color: const Color(0xff242020),
//                       fontWeight: FontWeight.w700,
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                     softWrap: true,
//                     maxLines: 1,
//                   ),
//                 ),
//              Container(
//                   width: 130.w,
//                   margin: EdgeInsets.only(left: 11.w,top: 1.h,right: 19.w),
//                   child: Text(
//                   widget.Product![widget.index].bio.toString(),
//                     strutStyle: StrutStyle(forceStrutHeight: true, height: 0.9.h),
//                     style:Montserrat.copyWith(
//                       fontSize: 7.sp,
//                       color: const Color(0xff3b2d2f),
//                       fontWeight: FontWeight.w700,
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                     softWrap: true,
//                     maxLines: 3,
//                   ),
//                 ),
//               Container(
//                 width: 130.w,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 4.w,top: 6.h),
//                           child: Text(
//                             '\$ ${ widget.Product![widget.index].price.toString()}',
//                             //todo : make the this line under here to all application
//                             strutStyle: StrutStyle(forceStrutHeight: true, height: 0.9.h),
//                             style: Montserrat.copyWith(
//                               fontSize: 7.sp,
//                               color: const Color(0xff3b2d2f),
//                               fontWeight: FontWeight.w700,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                             softWrap: true,
//                             maxLines: 1,
//                           ),
//                         ),
//
//                         Container(
//                           margin: EdgeInsets.only(left: 3.w,top: 2.h),
//                           child: Text(
//                             widget.Product![widget.index].discount!=null? '${ widget.Product![widget.index].discount}% OFF':"",
//                             strutStyle: StrutStyle(forceStrutHeight: true, height: 0.9.h),
//                             style: Montserrat.copyWith(
//                               fontSize: 4.sp,
//                               color: const Color(0xff8f8486),
//                               fontWeight: FontWeight.w700,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                             softWrap: true,
//                             maxLines: 1,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 4.h,right: 10.w),
//                       child: CustomButton(
//                           StructuHeight: 0.4,
//                           onPressed: (){},
//                           btnColor:  const Color(0xffffffff),
//                           BorderColor: const Color(0xff7BE461),
//                           TxtColor: const Color(0xff7be461),
//                           SocialName: "nulls",
//                           ButtonText: "Add",
//                           fontsize: 5,
//                           weight: FontWeight.w700,
//                           HeigthBTN: 11,
//                           Widthbtn: 37,
//                           BorderRaduis: 1
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         );
//   }
// }
