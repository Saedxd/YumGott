import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:Yumgott/UI/Home/MenuScreen/pages/MenuScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/EditRestaurantProfile/pages/EditRestaurantProfile.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantProfile/bloc/RestaurantProfile_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantProfile/bloc/RestaurantProfile_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantProfile/bloc/RestaurantProfile_State.dart';
import 'package:Yumgott/UI/RestaurantHome/WalletScreen/pages/SettingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/Avatar.dart';
import 'package:Yumgott/Core/widgets/CustomButton2.dart';
import 'package:Yumgott/Injection.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RestaurantProfileScreen extends StatefulWidget {
RestaurantProfileScreen(this.Restaurant_ID);
int Restaurant_ID;
  @override
  _RestaurantProfileScreenState createState() => _RestaurantProfileScreenState();
}


class _RestaurantProfileScreenState extends State<RestaurantProfileScreen> {
  final _RestaurantProfileBloc = sl<RestaurantProfileBloc>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int MY_index = 0;

  List<String> tabs=["Media","Menu",];
  PanelController controller = PanelController();

  @override
    void initState() {
    _RestaurantProfileBloc.add(GetProfile());
      super.initState();
  }



  @override
  Widget build(BuildContext Context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _RestaurantProfileBloc,
        builder: (BuildContext context, RestaurantProfileState state) {

          if (state.success==false && state.error=="Unauthenticated"){
            PushAndRemoveUtil(context, Login());
          }

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
                child:Stack(
                  children: [



                    Positioned(
                        top: 0,
                        child: Image.asset("Assets/images/cover.png",
                            fit: BoxFit.contain)),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: w,
                        height: 622.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(40.0.r),
                        ),
                        child: Column(
                          children: [
                           Container(
                             width: w,
                             child: Row(
                               children: [
                                 Container(

                                   margin: EdgeInsets.only(left: 56.w,top: 6.h),
                                   child:Text.rich(
                                     TextSpan(
                                       style: Montserrat.copyWith(
                                         fontSize: 14.sp,
                                         height: 1.5.h,
                                         color: const Color(0xff3b2d2f),
                                       ),
                                       children: [
                                         TextSpan(
                                           text:
                                        //   state.success!?"${state.UserData!.data!.user!.followers!.length}\n":
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

                                 Container(
                                   margin: EdgeInsets.only(left: 168.w,top: 6.h),
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
                            Container(
                              width: 172.w,
                              margin: EdgeInsets.only(top: 16.h),
                              child: Text(

                                // state.success!
                                //     ? state.UserData!.data!.user!.name!
                                //     :
                                "Restaurant Name",
                                textAlign: TextAlign.center,
                                strutStyle: StrutStyle(height: 1.4.h),
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
                              margin: EdgeInsets.only(top: 4.8.h),
                              child: Text(
                                // state.success!
                                //     ? state.UserData!.data!.bio!
                                //     :
                                "restaurant description ",
                                style: Montserrat.copyWith(
                                    fontSize: 10.sp,
                                    color: const Color(0xff3b2d2f),
                                    fontWeight: FontWeight.w500,
                                    height: 1.4.h),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                softWrap: true,
                                maxLines: 2,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 32.7.h),
                              child: Row(
                                children: [

                                Container(
                                    margin: EdgeInsets.only(left: 44.8.w),
                                    child :
                                    CustomButton2(
                                      onPressed:(){
                                        PushNavigator(Context, EditRestaurantProfile(),(){});
                                      },
                                      btnColor:state.AlreadyFollowing!?Color(0xff707070): const Color(0xffFA3858),
                                      BorderColor: state.AlreadyFollowing!?Color(0xff707070): const Color(0xffFA3858),
                                      TxtColor: Colors.white,
                                      SocialName: "null",
                                      ButtonText: state.AlreadyFollowing!?"Following":'Follow',
                                      fontsize: 11,
                                      weight:FontWeight.w600,
                                      HeigthBTN: 29.08,
                                      Widthbtn: 102.18,
                                    )),





                                  Container(
                                    width: 0.55.w,
                                    height: 23.36.h,
                                    margin: EdgeInsets.only(left: 18.7.w),
                                    color: Color(0xff707070),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 202.w,
                                      margin: EdgeInsets.only(left: 15.3.w),
                                      child: Column(
                                        children:[
                                        InkWell(
                                          onTap: (){
                                            if (state.success!){
                                              MapUtils.openMapToDirection(double.parse(state.UserData!.data!.latitude!), double.parse(state.UserData!.data!.longitude!));
                                            }
                                          },
                                          child: Container(
                                           child:
                                            Row(
                                              children: [

                                                Container(
                                                    margin: EdgeInsets.only(bottom: 3.h),
                                                    child: Icon(Icons.location_on,color: Color(0xffFA3858),size: 13.w,)),

                                                Container(
                                                  width: 150.w,
                                                  child: Text(
                                                    'Camden, NJ 08102'
                                                    'Camden, NJ 08102'
                                                    'Camden, NJ 08102'
                                                    ,
                                                    strutStyle: StrutStyle(height: 0.8.h),
                                                    style: Montserrat.copyWith(
                                                      fontSize: 10.sp,
                                                      color: const Color(0xff3b2d2f),
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    textAlign: TextAlign.center,
                                                    softWrap: true,
                                                  ),
                                                )
                                              ],
                                            ),),
                                        ),

                                          Row(
                                       children: [

                                         InkWell(
                                           onTap: (){
                                             if (state.success!){
                                               MapUtils.openMapToDirection(double.parse(state.UserData!.data!.latitude!), double.parse(state.UserData!.data!.longitude!));
                                             }


                                             },
                                           child: Container(
                                             width: 78.w,
                                             height: 13.h,
                                             decoration: BoxDecoration(
                                               color: const Color(0xfffa3858),
                                               borderRadius: BorderRadius.circular(4.0.r),
                                             ),
                                             child: Row(
                                               children: [
                                                 Container(
                                                   margin: EdgeInsets.only(bottom: 3.h,left: 11.w,top: 1.h),
                                                     child: Icon(Icons.directions,color: Colors.white,size: 8.w,)),
                                                 Container(
                                                   margin: EdgeInsets.only(left: 3.w),
                                                   child: Center(

                                                     child:
                                                     Text(
                                                            'Direction',
                                                            style:Montserrat.copyWith(
                                                              fontSize: 8.sp,
                                                              color: const Color(0xffe4d7d7),
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.h
                                                            ),
                                                            textAlign: TextAlign.center,
                                                            softWrap: true,
                                                          ),
                                                   ),
                                                 ),
                                               ],
                                             ),
                                           ),
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(bottom: 1.h,left: 6.w),
                                             child: Icon(Icons.access_time_rounded,color: Colors.black,size: 12.w,)),
                                         Container(
                                           margin: EdgeInsets.only(left: 4.w,top: 3.h),
                                           child: Text(
                                             '12 AM-10 PM',
                                             style: Montserrat.copyWith(
                                               fontSize: 10.sp,
                                               color: const Color(0xff3b2d2f),
                                               fontWeight: FontWeight.w500,
                                             ),
                                             textAlign: TextAlign.center,
                                             softWrap: false,
                                           ),
                                         ),


                                       ],
                                     ),
                                        ],
                                      ),
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
                                    margin: EdgeInsets.only(top: 41.3.h,left: 136.w),
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
                                                if (index==0)
                                                  _RestaurantProfileBloc.add(ChangeSelectedTab((b) => b..index=index));
                                                else
                                                  controller.open();

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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120.h,
                      left: 0,
                      right: 0,
                      child: Avatar(
                        BackgroundOutside: Color(0XFF707070),
                        Is_Restaurant: true,
                        Image: state.success!?state.UserData!.data!.photo!:"", Sucess: state.success!,
                      )
                    ),

                    MenuWidget(widget.Restaurant_ID, context,controller),
                    // Container(
                    //     width: w,
                    //     margin: EdgeInsets.only(right: 18.w,top: 30.h),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: [
                    //        CircleAvatar(
                    //          radius: 20.r,
                    //          backgroundColor: Colors.black12,
                    //          child:  InkWell(
                    //            onTap: (){
                    //              PushNavigator(context, SettingsScreen());
                    //            },
                    //            child: Container(
                    //              width: 40.w,
                    //              height: 40.h,
                    //              child: Icon(Icons.settings,color: Colors.black,size: 22.w,),
                    //            )),)
                    //       ],
                    //     )
                    // ),


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
