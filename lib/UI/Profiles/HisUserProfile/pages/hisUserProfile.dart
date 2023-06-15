import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/widgets/Avatar.dart';
import 'package:Yumgott/Core/widgets/CustomButton2.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Profiles/HisUserProfile/bloc/hisUserProfile_Bloc.dart';
import 'package:Yumgott/UI/Profiles/HisUserProfile/bloc/hisUserProfile_Event.dart';
import 'package:Yumgott/UI/Profiles/HisUserProfile/bloc/hisUserProfile_State.dart';
import 'package:Yumgott/core/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class HisUserProfileScreen extends StatefulWidget {
  int? User_id;
  HisUserProfileScreen(this.User_id,);
  //ScrollController? controller;
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<HisUserProfileScreen> {

  final _HisUserProfileBloc = sl<HisUserProfileBloc>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int MY_index = 0;
  List<int> VIdoesLength = [1,2,3,];
  List<String> tabs=["Media","Like",];


@override
void initState() {
 _HisUserProfileBloc.add(GetProfile((b) => b..User_ID =widget.User_id));
  super.initState();
}



  @override
  Widget build(BuildContext Context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _HisUserProfileBloc,
        builder: (BuildContext context, HisUserProfileState state) {

          return WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: Scaffold(
              backgroundColor: Colors.white,
              extendBody: true,
              resizeToAvoidBottomInset: false,
              key: _scaffoldKey,
              body: SafeArea(
                bottom: false,
                child:
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 237.h,
                          width: w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: w,
                                margin: EdgeInsets.only(top: 35.h,),
                                child: Column(
                                  children: [
                                    Avatar(
                                      BackgroundOutside: Color(0xffFA3858),
                                      Is_Restaurant: false,
                                      Image:state.success!?state.UserData!.data!.photo!:"", Sucess: state.success,
                                   //   Sucess: state.success!,
                                    ),
                                    Container(
                                      width: 172.w,
                                      margin: EdgeInsets.only(top: 14.h),
                                      child: Text(
                                        state.success!?
                                          state.UserData!.data!.name!:"username",

                                        strutStyle: StrutStyle(height: 1.4.h),
                                        textAlign: TextAlign.center,
                                        style: Montserrat.copyWith(
                                          fontSize: 15.sp,
                                          color: const Color(0xff3b2d2f),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        softWrap: true,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      width: 136.w,
                                      margin: EdgeInsets.only(top: 8.h),
                                      child: Text(
                                        // state.success!?
                                        //   state.UserData!.data!.bio!
                                        //     :
                                        "user description"
                                        ,
                                        textAlign: TextAlign.center,
                                        style: Montserrat.copyWith(
                                            fontSize: 10.sp,
                                            color: const Color(0xff3b2d2f),
                                            fontWeight: FontWeight.w500,
                                            height: 1.4.h),
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 2,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 11.h),
                                        child :
                                        CustomButton2(
                                          onPressed: (){
                                            _HisUserProfileBloc.add(FollowUser());
                                          },
                                          btnColor: state.AlreadyFollowing!?Color(0xff707070):const Color(0xffFA3858),
                                          BorderColor: state.AlreadyFollowing!?Color(0xff707070):const Color(0xffFA3858),
                                          TxtColor: Colors.white,
                                          SocialName: "null",
                                          ButtonText: state.AlreadyFollowing!?"Following":'Follow',
                                          fontsize: 12,
                                          weight:FontWeight.w600,
                                          HeigthBTN: 25,
                                          Widthbtn: 89,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 66.w, top: 16.h),
                          child: Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  style: Montserrat.copyWith(
                                    fontSize: 14.sp,
                                    height: 1.5.h,
                                    color: const Color(0xff3b2d2f),
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                      //state.success!?"${state.UserData!.data!.following!.length}\n":
                                      "0\n",
                                      style: Montserrat.copyWith(
                                        fontSize: 14.sp,
                                        height: 1.5.h,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Following',
                                      style: Montserrat.copyWith(
                                        fontSize: 11.sp,
                                        height: 1.5.h,
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
                              Container(
                                width: 0.55.w,
                                height: 15.h,
                                margin: EdgeInsets.only(left: 26.5.w),
                                color: Color(0xff707070),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 23.5.w),
                                child: Text.rich(
                                  TextSpan(
                                    style: Montserrat.copyWith(
                                      fontSize: 14.sp,
                                      height: 1.5.h,
                                      color: const Color(0xff3b2d2f),
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                        //state.success!?"${state.UserData!.data!.followers!.length}\n":
                                        "0\n",
                                        style: Montserrat.copyWith(
                                          fontSize: 14.sp,
                                          height: 1.5.h,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Followers',
                                        style: Montserrat.copyWith(
                                          fontSize: 11.sp,
                                          height: 1.5.h,
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
                              Container(
                                width: 0.55.w,
                                height: 15.h,
                                margin: EdgeInsets.only(left: 29.5.w),
                                color: Color(0xff707070),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 29.5.w),
                                child: Text.rich(
                                  TextSpan(
                                    style: Montserrat.copyWith(
                                      fontSize: 14.sp,
                                      height: 1.5.h,
                                      color: const Color(0xff3b2d2f),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '2561\n',
                                        style: Montserrat.copyWith(
                                          fontSize: 14.sp,
                                          height: 1.5.h,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'likes',
                                        style:Montserrat.copyWith(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5.h,
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
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                width: 172.w,
                                height: 18.h,
                                margin: EdgeInsets.only(top: 16.h,left: 136.w),
                                child: ScrollConfiguration(
                                    behavior: MyBehavior(),
                                    child: ListView.separated(
                                      cacheExtent: 500,
                                      physics: NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: tabs.length,

                                      itemBuilder:  (BuildContext context, int index) {
                                        return RemoveHighlight(InkWell(
                                          onTap:(){
                                            _HisUserProfileBloc.add(ChangeSelectedTab((b) => b..index=index));
                                          },
                                          child: Container(
                                            width: 32.w,
                                            height: 18.h,
                                            padding: EdgeInsets.only(
                                              top: 4.h, // This can be the space you need between text and underline
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border(bottom: BorderSide(
                                                  color:state.SelectedTap![index]? Color(0xff707070):Colors.transparent,
                                                  width: 1.0.w, // This would be the width of the underline
                                                ))
                                            ),
                                            child: Text(
                                              tabs[index],
                                              style: Montserrat.copyWith(
                                                //    decoration:state.SelectedTap![index]? TextDecoration.underline:null,
                                                decorationColor: Color(0xff707070),
                                                fontSize: 10.sp,
                                                color: const Color(0xff707070),
                                                fontWeight: FontWeight.w800,
                                                height: 1.h
                                              ),
                                              textAlign: TextAlign.center,
                                              softWrap: false,
                                            ),
                                          ),
                                        ));
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return SizedBox(width: 38.w,);
                                      },
                                    ))),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            width: w,
                            height: 400.h,
                            margin: EdgeInsets.only(top: 16.5.h,right: 6.w,left: 6.w),
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 4,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                    borderRadius: index==0
                                        ? border(0,0,46,0)
                                        :index ==1
                                          ?  border(0,0,0,46)
                                          : border(0,0,0,0)

                                  ),);
                              },
                              staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2 : 1),
                              mainAxisSpacing: 4.0,
                              crossAxisSpacing: 4.0,
                            ),
                          ),
                        )

                            // Container(
                            //       width: w,
                            //         height: 223.h,
                            //         color: Colors.grey,
                            //         margin: EdgeInsets.only(left: 6.w,top: 16.5,right: 6.w),
                            //           child:
                            //           Column(
                            //             children: [
                            //               StaggeredGrid.count(
                            //                 crossAxisCount: 4,
                            //                 mainAxisSpacing: 4,
                            //                 crossAxisSpacing: 4,
                            //                 children:  [
                            //                   StaggeredGridTile.count(
                            //                     crossAxisCellCount: 2,
                            //                     mainAxisCellCount: 2,
                            //                     child:Container(
                            //                       width: 194.w,
                            //                       height: 197.h,
                            //                       decoration: BoxDecoration(
                            //                         color: Colors.black,
                            //                         // image: DecorationImage(
                            //                         //  image: const AssetImage(''),
                            //                         //   fit: BoxFit.cover,
                            //                         // ),
                            //                         borderRadius: BorderRadius.only(
                            //                           topLeft: Radius.circular(46.0.r),
                            //                         ),
                            //                       ),
                            //
                            //                     ),
                            //                   ),
                            //                   StaggeredGridTile.count(
                            //                     crossAxisCellCount: 2,
                            //                     mainAxisCellCount: 1,
                            //
                            //                     child:Container(
                            //                       width: 164.w,
                            //                       height: 99.h,
                            //                       decoration: BoxDecoration(
                            //                         color: Colors.red,
                            //                         // image: DecorationImage(
                            //                         //   image:  AssetImage(''),
                            //                         //   fit: BoxFit.cover,
                            //                         // ),
                            //                         borderRadius: BorderRadius.only(
                            //                           topRight: Radius.circular(46.0.r),
                            //                         ),
                            //                       ),
                            //
                            //                     ),
                            //                   ),
                            //                   StaggeredGridTile.count(
                            //                     crossAxisCellCount: 2,
                            //                     mainAxisCellCount: 1,
                            //                     child:Container(width: 117.67.w,height: 215.h,color: Colors.yellow,),
                            //                   ),
                            //                 ],
                            //               ),
                            //             ],
                            //           ),
                            //
                            //
                            //     ),
                            // Container(
                            //   height: 190.h,
                            //         margin: EdgeInsets.only(left: 6.w,right: 6.w),
                            //         width: w,
                            //         child:GridView.builder(
                            //           controller: Scroller2,
                            //             shrinkWrap: true,
                            //             itemCount:25,
                            //             physics: AlwaysScrollableScrollPhysics(),
                            //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            //               crossAxisCount:4,
                            //               crossAxisSpacing: 5,
                            //               mainAxisSpacing: 4,
                            //               childAspectRatio: (1 / 2),
                            //             ),
                            //             itemBuilder: (context, index) {
                            //
                            //
                            //               return
                            //                 Container(
                            //                   // width: 117.67.w,
                            //                   // height: 100.h,
                            //                   decoration: BoxDecoration(
                            //                     color: Colors.redAccent,
                            //                     // image: DecorationImage(
                            //                     //   image: const AssetImage(''),
                            //                     //   fit: BoxFit.cover,
                            //                     // ),
                            //                   ),
                            //
                            //                 );
                            //
                            //
                            //             }
                            //         )
                            //     ),
                      ],
                    ),

                    state.isLoading == true
                        ? Center(child: listLoader(context: context))
                        : Container(),
                  ],
                ),
              ),
            ),
          );
        });
  }

//

// Animatable<Color?> darkBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffA93064).withOpacity(.9),
//         end: Color(0xff932557).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffA93064).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
//
// Animatable<Color?> normalBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffB9484C).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffB9484C).withOpacity(.9),
//         end: Color(0xff932557).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
//
// Animatable<Color?> lightBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffB9484C).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffB9484C).withOpacity(0.9),
//         end: Color(0xff932557).withOpacity(0.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
// AlignmentTween aT =
// AlignmentTween(begin: Alignment.topRight, end: Alignment.topLeft);
// AlignmentTween aB =
// AlignmentTween(begin: Alignment.bottomRight, end: Alignment.bottomLeft);

}
