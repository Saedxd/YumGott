// ignore_for_file: must_be_immutable

import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Core/DynamicLinks/Dynamic_Links.dart';
import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart' as home;
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:Yumgott/UI/Home/HomeScreen/pages/HomePage.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/bloc/RestaurantHomePage_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/bloc/RestaurantHomePage_Event.dart' as Rest;
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/bloc/RestaurantHomePage_State.dart';
import 'package:Yumgott/main.dart';
import 'package:Yumgott/models/GetAllVidoesModel/GetAllVidoesModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/Core/widgets/CustomButton2.dart';
import 'package:Yumgott/Core/widgets/VideoWidget.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/pages/RestaurantsScreen.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Bloc.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_State.dart';
import 'package:Yumgott/UI/Profiles/HisUserProfile/pages/hisUserProfile.dart';
import 'package:built_collection/built_collection.dart';
import 'package:like_button/like_button.dart';
import 'package:share_plus/share_plus.dart';

class ShortVideos_Screen extends StatefulWidget {
  ShortVideos_Screen(
      this.ontap,
      this.ontap2,
      this.ontap3,
      this.ontap4
    //  this.data
      ,this.Loaded,
      this.ontap5,
      this.AllPosts,
      this.Bloc,
      this.ontap6,
      this.ShowPolicyContainer,
      this.Bloc2,
      this.Is_Restaurant,

      );

  List<Video>?  AllPosts;
  VoidCallback? ontap;
  VoidCallback? ontap2;
  VoidCallback? ontap3;
  VoidCallback? ontap4;
  VoidCallback? ontap5;
  VoidCallback? ontap6;
  HomePageBloc? Bloc;
  RestaurantHomePageBloc? Bloc2;
  bool? ShowPolicyContainer;
  bool? Is_Restaurant;
  //BuiltList<GetAllVidoesModel>?  data;
  // HomePageState? State;
  // RestaurantHomePageState? State2;

  bool? Loaded;

  @override
  _ShortVideos_ScreenState createState() => _ShortVideos_ScreenState();
}

class _ShortVideos_ScreenState extends State<ShortVideos_Screen>
    with SingleTickerProviderStateMixin {
  int LikeandSaveCurrent_Index = 0;
  final _ShortVidoesBloc = sl<ShortVidoesBloc>();
  TabController? _tabController;
  final PageController _pageController = PageController();

  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }


  void _onShareWithResult(BuildContext context, String UserHashID) async {
    print("done");
    ShareResult result;
    final box = context.findRenderObject() as RenderBox?;
    result = await Share.shareWithResult(UserHashID,
        subject: "Hello <3",
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);


  }

  Future<bool> changedata(status)async{
    //your code


  //  print(isLiked);
    /// send your request here
    // final bool success= await sendRequest();
    print("LikeandSaveCurrent_Index : ${LikeandSaveCurrent_Index}");
            if (widget.ShowPolicyContainer!){
              widget.ontap6!.call();
            }
    if (widget.Is_Restaurant!)
            widget.Bloc2!.add(Rest.SwitchLikeBUtton((b) => b
              ..index = LikeandSaveCurrent_Index
              ..MyUsername = name
              ..important_id =  widget.AllPosts![LikeandSaveCurrent_Index].id.toString()
              ..received_user = widget.AllPosts![LikeandSaveCurrent_Index].Publisher!.ID.toString()
            ));
    else
    widget.Bloc!.add(home.SwitchLikeBUtton((b) => b
      ..index = LikeandSaveCurrent_Index
      ..MyUsername = name
      ..important_id =  widget.AllPosts![LikeandSaveCurrent_Index].id.toString()
      ..received_user = widget.AllPosts![LikeandSaveCurrent_Index].Publisher!.ID.toString()
    ));
    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;
    print("widget.State!.AllPosts![LikeandSaveCurrent_Index].LikeStatus! : ${widget.AllPosts![LikeandSaveCurrent_Index].LikeStatus!}");

    return Future.value( !widget.AllPosts![LikeandSaveCurrent_Index].LikeStatus!);
  }

  Future<bool> onSaveButtonTapped(bool isLiked) async{
    /// send your request here
    // final bool success= await sendRequest();
    print("LikeandSaveCurrent_Index : ${LikeandSaveCurrent_Index}");
    if (widget.ShowPolicyContainer!){
      widget.ontap6!.call();
    }
    if (widget.Is_Restaurant!)
    widget.Bloc2!.add(Rest.SwitchSaveButton((b) => b..index = LikeandSaveCurrent_Index));
    else
    widget.Bloc!.add(home.SwitchSaveButton((b) => b..index = LikeandSaveCurrent_Index));

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    return !widget.AllPosts![LikeandSaveCurrent_Index].SaveStatus!;
  }

  Future<void> OnRefresh() async {
   widget.ontap5!.call();
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var s = MediaQuery.of(context).size;
    return BlocBuilder(
        bloc: _ShortVidoesBloc,
        builder: (BuildContext Context, ShortVideosState state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: [


            //
            //   VimeoVideoPlayer(
            //   url:"http://clips.vorwaerts-gmbh.de/VfE_html5.mp4",
            //     autoPlay: true,
            // ),



                widget.Loaded!
                    ? Container(
                    width: w,
                    height: h,
                    color: Colors.black,
                    child:RefreshIndicator(
                        onRefresh: OnRefresh,
                        backgroundColor: Colors.white,
                        color: Color(0xffFA3858),
                        child:  ScrollConfiguration(
                            behavior: MyBehavior(),
                            child: PageView.builder(
                                scrollDirection: Axis.vertical,
                                physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                                controller: _pageController,
                                onPageChanged: (int index) {CurrentVideoIndex = index;},
                                itemCount:  widget.AllPosts!.length,
                                itemBuilder: (context, index) {
                                  CurrentVideoIndex = index;
                                  return Center(
                                      child: Stack(
                                        children: [
                                          // VimeoPlayer(
                                          //   videoId: widget.AllPosts![index].VideoUrl.toString(),
                                          // ),
                                          VideoPlayerItem(
                                            videoUrl: widget.AllPosts![index].VideoUrl.toString(),
                                            size: s,
                                            ShowPolicyContainer: widget.ShowPolicyContainer!,
                                            ontap3: widget.ontap6,

                                          ),
                                          Positioned(
                                            bottom: 95.h,
                                            child: Container(
                                              width: 213.w,
                                              height: 100.h,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 40.w,
                                                    height: 105.h,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                            width: 40.w,
                                                            height: 84.h,
                                                            margin: EdgeInsets.only(
                                                                left: 9.w),
                                                            child: Column(
                                                              children: [
                                                                InkWell(
                                                                    onTap: widget.ontap,
                                                                    child:CachedImages(Raduis: 17,Image: widget.AllPosts![index].Restaurant!.Image,)
                                                                ),
                                                              ],
                                                            )),
                                                      ],
                                                    ),
                                                  ),

                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 10.w,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        InkWell(
                                                          onTap: (){
                                                            try{
                                                              MapUtils.openMapToDirection(double.parse(widget.AllPosts![index].Restaurant!.lat.toString()), double.parse(widget.AllPosts![index].Restaurant!.lng.toString()));
                                                            }catch(E){
                                                              print(E);
                                                            }
                                                          //  if (state.success!){
                                                           //  }
                                                          },
                                                          child: Container(
                                                            width: 137.w,
                                                            margin: EdgeInsets.only(
                                                                bottom: 0.2.h),
                                                            child: Row(
                                                              children: [
                                                                Flexible(
                                                                  fit: FlexFit.loose,
                                                                  child: Text(
                                                                    'Madrid'
                                                                        'Madrid'
                                                                        'Madrid'
                                                                        'Madrid'
                                                                        'Madrid'
                                                                        'Madrid'
                                                                    ,
                                                                    textAlign:TextAlign.left,
                                                                    strutStyle:StrutStyle(
                                                                        height:
                                                                        0.7.h),
                                                                    style:Montserrat.copyWith(
                                                                      fontSize:8.sp,
                                                                      color:Colors.white,
                                                                      fontWeight:FontWeight.w700,
                                                                    ),
                                                                    maxLines:1,
                                                                    overflow:TextOverflow.ellipsis,
                                                                    softWrap:true,
                                                                  ),
                                                                ),
                                                                SvgPicture.asset(
                                                                  "Assets/images/location.svg",  color: Colors.white,)
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 137.w,
                                                          child: Text(
                                                            widget.AllPosts![index].Restaurant!.name,
                                                            strutStyle: StrutStyle(  height: 1.35.h),
                                                            textAlign: TextAlign.left,
                                                            style: Montserrat.copyWith(
                                                              fontSize: 15.sp,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                            maxLines: 1,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            softWrap: true,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 137.w,
                                                          child: Row(
                                                            children: [
                                                              Flexible(
                                                                fit: FlexFit.loose,
                                                                child: Container(
                                                                  margin:
                                                                  EdgeInsets.only(
                                                                    top: 5.h,
                                                                  ),
                                                                  child: Text(
                                                                    widget.AllPosts![index].product!.Name,
                                                                    strutStyle:
                                                                    StrutStyle(
                                                                        height:
                                                                        0.82.h),
                                                                    textAlign:
                                                                    TextAlign.left,
                                                                    style: Montserrat
                                                                        .copyWith(
                                                                      fontSize: 10.sp,
                                                                      color: Colors.white,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                    ),
                                                                    softWrap: false,
                                                                    maxLines: 1,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .fade,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets.only(
                                                                    top: 3.h,
                                                                    left: 6.w),
                                                                child: CustomButton(
                                                                  StructuHeight: 0.5,
                                                                  onPressed: () {
                                                                   if (widget.ShowPolicyContainer!){
                                                                     widget.ontap6!.call();
                                                                   }
                                                                  },

                                                                  btnColor: Color(0xffFA3858),
                                                                  BorderColor:Color(0xffFA3858),
                                                                  TxtColor:  Colors.white,
                                                                  SocialName: "null",
                                                                  ButtonText: 'Order Now',
                                                                  fontsize: 7,
                                                                  weight: FontWeight.w800,
                                                                  HeigthBTN: 18,
                                                                  Widthbtn: 73,
                                                                  BorderRaduis: 18,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 137.w,
                                                          height: 32.h,
                                                          margin:
                                                          EdgeInsets.only(top: 6.h),
                                                          child: Text(
                                                              widget.AllPosts![index].product!.Description,
                                                              textAlign: TextAlign.left,
                                                              style:
                                                              Montserrat.copyWith(
                                                                fontSize: 8.sp,
                                                                height: 1.2.h,
                                                                color: Colors.white,
                                                                fontWeight:
                                                                FontWeight.w500,
                                                              ),
                                                              maxLines: 3,
                                                              overflow:
                                                              TextOverflow.ellipsis,
                                                              softWrap: true),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 445.h,
                                            left: 320.w,
                                            child: SafeArea(
                                              child: Container(
                                                width: 50.w,
                                                height: 500.h,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 35.w,
                                                      height: 35.h,
                                                    margin: EdgeInsets.only(right: 8.5.w),
                                                      child: InkWell(
                                                        onTap: widget.ontap3,
                                                        child: Container(
                                                          width: 35.w,
                                                          height: 35.h,
                                                          //    color: Colors.greenAccent,

                                                          child: Center(
                                                            child: CircleAvatar(
                                                              radius: 18.r,
                                                              backgroundColor:
                                                              Colors.transparent,
                                                              child: Stack(
                                                                children: [

                                                                  Positioned(
                                                                      bottom: 0,
                                                                      right: 0,
                                                                      child: CircleAvatar(
                                                                        radius: 13.r,
                                                                        child: CachedImages(Raduis: 17,Image:   widget.AllPosts![index].Publisher!.Image,),
                                                                      )),
                                                                  Positioned(
                                                                      left: 3.w,
                                                                      top: 3.h,
                                                                      child: Icon(
                                                                        Icons.add_rounded,
                                                                        color: Color(
                                                                            0xff707070),
                                                                        size: 20.w,
                                                                      )),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 35.w,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 35.w,
                                                            height: 35.h,
                                                            margin: EdgeInsets.only(top: 21.h),
                                                            child: LikeButton(
                                                            isLiked: widget.AllPosts![index].LikeStatus,
                                                             onTap: (isLiked) {
                                                               return changedata(
                                                                 isLiked,
                                                               );
                                                             },
                                                              size: 27.w,
                                                              circleColor: CircleColor(start:Colors.red, end: Colors.pinkAccent),
                                                              bubblesColor: BubblesColor(
                                                                dotPrimaryColor: Colors.red,
                                                                dotSecondaryColor: Colors.pink
                                                              ),
                                                              likeBuilder: (bool isLiked) {
                                                                LikeandSaveCurrent_Index = index;
                                                                print("isLiked : ${isLiked}");

                                                                return Icon(
                                                                  Icons.favorite,
                                                                  color: isLiked ? Color(0xffFA3858) :  Colors.white,
                                                                  size: 27.w,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          // Container(
                                                          //     margin: EdgeInsets.only(
                                                          //         top: 21.h),
                                                          //     width: 35.w,
                                                          //     //     color: Colors.greenAccent,
                                                          //     height: 35.h,
                                                          //     child:IconButton(
                                                          //       padding: EdgeInsets.zero,
                                                          //       constraints:  BoxConstraints(),
                                                          //
                                                          //       onPressed: () {
                                                          //         if (widget.ShowPolicyContainer!){
                                                          //           widget.ontap6!.call();
                                                          //         }
                                                          //         widget.Bloc!.add(SwitchLikeBUtton((b) => b
                                                          //           ..index = index
                                                          //           ..MyUsername = name
                                                          //           ..important_id =  widget.State!.AllPosts![index].id.toString()
                                                          //           ..received_user = widget.State!.AllPosts![index].Publisher!.ID.toString()
                                                          //         ));
                                                          //
                                                          //       },
                                                          //       icon: SvgPicture.asset(
                                                          //         !widget.State!.Like_isLoading!?
                                                          //         !widget.State!.AllPosts![index].LikeStatus!
                                                          //             ?"Assets/images/black-heart-outline-3512.svg"
                                                          //             :"Assets/images/love.svg":"Assets/images/black-heart-outline-3512.svg",
                                                          //         color:widget.State!.AllPosts![index].LikeStatus!? Color(0xffFA3858): Colors.white,
                                                          //         width: 27.w,
                                                          //         height: 27.h,
                                                          //       ),
                                                          //     )),
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top: 4.h),
                                                            child: Text(
                                                              // "400",
                                                             // !widget.Like_isLoading!?
                                                              widget.AllPosts![index].LikesCount.toString(),
                                                                  //:"0",
                                                              style: Montserrat.copyWith(
                                                                fontSize: 11.sp,
                                                                color: const Color(
                                                                    0xffffffff),
                                                                fontWeight:
                                                                FontWeight.w600,
                                                              ),
                                                              softWrap: true,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(top: 18.h),
                                                          width: 35.w,
                                                          height: 35.h,
                                                          child: IconButton(
                                                            padding: EdgeInsets.zero,
                                                            constraints: BoxConstraints(),
                                                            onPressed: ()async{
                                                              if (widget.ShowPolicyContainer!){
                                                                widget.ontap6!.call();
                                                              }

                                                              await
                                                              ShowCommentSection(
                                                                Context,
                                                                TextEditingController(),
                                                                    (value){},
                                                                _ShortVidoesBloc,
                                                                widget.AllPosts![index].id.toString(),
                                                                widget.AllPosts![index].product!.ID.toString(),
                                                                ""
                                                          //      ID,
                                                              );

                                                              // CommonBottonSheet(context: context);

                                                              // showModalBottomSheet(
                                                              //     context: context,
                                                              //     isScrollControlled: true,
                                                              //     shape: RoundedRectangleBorder(
                                                              //         borderRadius: BorderRadius.only(
                                                              //           topRight: Radius.circular(20.0.r),
                                                              //           topLeft: Radius.circular(20.0.r),
                                                              //         )
                                                              //     ),
                                                              //     builder: (BuildContext bc){
                                                              //
                                                              //       return
                                                              //               Container(
                                                              //                 height: 685.h,
                                                              //                 child: Stack(
                                                              //                   children: [
                                                              //                     InkWell(
                                                              //                       onTap: (){
                                                              //                         print("MediaQuery.of(bc) .viewInsets.bottom:${MediaQuery.of(context) .viewInsets .bottom}");
                                                              //                         print("MediaQuery.of(bc) .viewInsets.bottom:${MediaQuery.of(context) .viewInsets .bottom}");
                                                              //
                                                              //                       },
                                                              //                       child: Container(
                                                              //                         width: w,
                                                              //                         height: 685.h,
                                                              //                         //  color: Colors.red,
                                                              //                         child: Column(children: [
                                                              //                           Container(
                                                              //                             width: w,
                                                              //                             margin: EdgeInsets.only(top: 24.h,left: 148.w),
                                                              //                             child: Text(
                                                              //                               'Comments',
                                                              //                               style:Montserrat.copyWith(
                                                              //                                 fontSize: 15.sp,
                                                              //                                 color: const Color(0xff707070),
                                                              //                                 fontWeight: FontWeight.w800,
                                                              //                               ),
                                                              //                               softWrap: false,
                                                              //                             ),),
                                                              //                           Container(
                                                              //                               margin: EdgeInsets.only(left: 17.9.w,top: 8.8.h,right: 33.2.w),
                                                              //                               child: Divider(height: 2.h,color: const Color(0xff707070),)),
                                                              //                           // state.GetCategorysuccess!
                                                              //                           //     ?
                                                              //
                                                              //                           state.success!?
                                                              //                           Container(
                                                              //                               width: w,
                                                              //                               height: 525.2.h,
                                                              //                               margin: EdgeInsets.only(
                                                              //                                   top: 27.2.h, left: 33.w, right: 26.w),
                                                              //                               child: ScrollConfiguration(
                                                              //                                 behavior: MyBehavior(),
                                                              //                                 child: ListView.separated(
                                                              //                                   cacheExtent: 500,
                                                              //                                   physics: AlwaysScrollableScrollPhysics(
                                                              //                                       parent: BouncingScrollPhysics()),
                                                              //                                   scrollDirection: Axis.vertical,
                                                              //                                   itemCount: state.AllComments!.length,
                                                              //                                   itemBuilder: (BuildContext context, int index) {
                                                              //                                     return InkWell(
                                                              //                                       onTap: () {
                                                              //                                         //    PushNavigator(context, CategoryRestaurants(Category_ID: state.GetCategories!.data![index].id!,));
                                                              //                                       },
                                                              //                                       child:
                                                              //                                       Row(
                                                              //                                         crossAxisAlignment: CrossAxisAlignment
                                                              //                                             .start,
                                                              //                                         children: [
                                                              //                                           Container(
                                                              //                                             width: 54.w,
                                                              //                                             height: 79.h,
                                                              //                                             child: Column(
                                                              //                                               mainAxisAlignment: MainAxisAlignment
                                                              //                                                   .start,
                                                              //                                               children: [
                                                              //                                                 Container(
                                                              //                                                     width: 54.w,
                                                              //                                                     height: 79.h,
                                                              //                                                     child:
                                                              //                                                     Column(
                                                              //                                                       children: [
                                                              //                                                         //
                                                              //                                                         CachedImages(Image:  state.AllComments![index].ProfileImage.toString(), Raduis: 20.5)
                                                              //
                                                              //
                                                              //                                                       ],
                                                              //                                                     )
                                                              //                                                 ),
                                                              //                                               ],
                                                              //                                             ),
                                                              //                                           ),
                                                              //                                           Row(
                                                              //                                             crossAxisAlignment: CrossAxisAlignment
                                                              //                                                 .end,
                                                              //                                             children: [
                                                              //                                               Column(
                                                              //                                                 children: [
                                                              //                                                   Container(
                                                              //                                                     width: (231).w,
                                                              //                                                     child: Row(
                                                              //                                                       children: [
                                                              //                                                         Column(
                                                              //                                                           children: [
                                                              //
                                                              //                                                             Container(
                                                              //                                                               width: 231.w,
                                                              //                                                               child: Text(
                                                              //                                                                 state.AllComments![index].UserName.toString(),
                                                              //                                                                 style: SegouUI
                                                              //                                                                     .copyWith(
                                                              //                                                                   fontSize: 12.sp,
                                                              //                                                                   color: const Color(
                                                              //                                                                       0xff000000),
                                                              //                                                                   fontWeight: FontWeight
                                                              //                                                                       .w700,
                                                              //                                                                 ),
                                                              //                                                                 maxLines: 1,
                                                              //                                                                 overflow: TextOverflow
                                                              //                                                                     .ellipsis,
                                                              //                                                                 strutStyle: StrutStyle(
                                                              //                                                                     height: 1.3.h),
                                                              //                                                                 softWrap: true,
                                                              //                                                               ),
                                                              //                                                             ),
                                                              //                                                             Container(
                                                              //                                                                 width: 231.w,
                                                              //                                                                 height: 11.h,
                                                              //                                                                 margin: EdgeInsets
                                                              //                                                                     .only(
                                                              //                                                                   top: 5.h,),
                                                              //                                                                 child:
                                                              //                                                                 ScrollConfiguration(
                                                              //                                                                     behavior: MyBehavior(),
                                                              //                                                                     child: ListView
                                                              //                                                                         .separated(
                                                              //                                                                       cacheExtent: 500,
                                                              //                                                                       physics: NeverScrollableScrollPhysics(
                                                              //                                                                           parent: BouncingScrollPhysics()),
                                                              //                                                                       scrollDirection: Axis
                                                              //                                                                           .horizontal,
                                                              //                                                                       itemCount: 5,
                                                              //                                                                       itemBuilder: (
                                                              //                                                                           BuildContext context,
                                                              //                                                                           int index) {
                                                              //                                                                         return Column(
                                                              //                                                                           children: [
                                                              //                                                                             Container(
                                                              //                                                                               width: 10
                                                              //                                                                                   .w,
                                                              //                                                                               height: 9
                                                              //                                                                                   .h,
                                                              //                                                                               child:
                                                              //                                                                               IconButton(
                                                              //                                                                                 onPressed: () {},
                                                              //                                                                                 padding: EdgeInsets
                                                              //                                                                                     .all(
                                                              //                                                                                     0),
                                                              //                                                                                 icon: Icon(
                                                              //                                                                                   Icons
                                                              //                                                                                       .star,
                                                              //                                                                                   color: Colors
                                                              //                                                                                       .amber,
                                                              //                                                                                   size: 10
                                                              //                                                                                       .w,
                                                              //                                                                                 ),
                                                              //                                                                               ),
                                                              //                                                                             )
                                                              //                                                                           ],
                                                              //                                                                         );
                                                              //                                                                       },
                                                              //                                                                       separatorBuilder: (
                                                              //                                                                           BuildContext context,
                                                              //                                                                           int index) {
                                                              //                                                                         return SizedBox(
                                                              //                                                                           width: 0
                                                              //                                                                               .w,);
                                                              //                                                                       },
                                                              //                                                                     )
                                                              //                                                                 )
                                                              //                                                             ),
                                                              //                                                             Container(
                                                              //                                                               margin: EdgeInsets
                                                              //                                                                   .only(top: 5.h),
                                                              //                                                               width: 231.w,
                                                              //                                                               child: Text(
                                                              //                                                                 state.AllComments![index].comment.toString(),
                                                              //                                                                 style: SegouUI.copyWith(
                                                              //                                                                     fontSize: 10.sp,
                                                              //                                                                     color: const Color( 0xff707070),
                                                              //                                                                     fontWeight: FontWeight.w700,
                                                              //                                                                     height: 1.5.h
                                                              //                                                                 ),
                                                              //                                                                 softWrap: true,
                                                              //                                                               ),
                                                              //                                                             )
                                                              //                                                           ],
                                                              //                                                         ),
                                                              //
                                                              //                                                       ],
                                                              //                                                     ),
                                                              //                                                   ),
                                                              //                                                 ],
                                                              //                                               ),
                                                              //                                               Container(
                                                              //                                                 width: 25.w,
                                                              //                                                 child: Column(
                                                              //                                                   children: [
                                                              //                                                     Container(
                                                              //                                                       child: Text(
                                                              //                                                         "",
                                                              //                                                //         timeago.format(DateTime.parse(state.AllComments![index].time.toString())),
                                                              //                                                         style: SegouUI.copyWith(
                                                              //                                                           fontSize: 4.sp,
                                                              //                                                           color: const Color(
                                                              //                                                               0xff707070),
                                                              //                                                         ),
                                                              //                                                         softWrap: false,
                                                              //                                                       ),
                                                              //                                                     )
                                                              //                                                   ],
                                                              //                                                 ),
                                                              //                                               ),
                                                              //                                             ],
                                                              //                                           ),
                                                              //                                         ],
                                                              //                                       ),
                                                              //                                     );
                                                              //                                   },
                                                              //                                   separatorBuilder: (BuildContext context,
                                                              //                                       int index) {
                                                              //                                     return SizedBox(
                                                              //                                       height: 23.h,
                                                              //                                     );
                                                              //                                   },
                                                              //                                 ),
                                                              //                               ))
                                                              //                               :state.isLoading == true
                                                              //                               ?Container(
                                                              //                               width: w,
                                                              //                               height: 525.2.h,
                                                              //                               margin: EdgeInsets.only(
                                                              //                                   top: 27.2.h, left: 33.w, right: 26.w),child: Center(child: listLoader(context: context)))
                                                              //                               :Container(),
                                                              //                         ],),
                                                              //                       ),
                                                              //                     ),
                                                              //
                                                              //
                                                              //
                                                              //
                                                              //                     Positioned(
                                                              //                       left: 0,
                                                              //                       right: 0,
                                                              //                       bottom: MediaQuery.of(context) .viewInsets
                                                              //                           .bottom,
                                                              //                       child:
                                                              //                       Container(
                                                              //                         width: w,
                                                              //                         margin: EdgeInsets.only(
                                                              //                             left: 34.w, right: 33.w, bottom: 22.h),
                                                              //                         child: textfeild(
                                                              //                             isDense: true,
                                                              //                             isCollapsed: true,
                                                              //                             PrefixImage: "no",
                                                              //                             //   topContentPadding: 10,
                                                              //                             verticalPaddind: 10,
                                                              //                             BorderWIdth: 1,
                                                              //                             FillColor: Colors.white,
                                                              //                             prefixIconClicked: () {},
                                                              //                             Want_prefixIconClicked: false,
                                                              //                             Want_Send_Icon: true,
                                                              //                             BorderType: "Outline",
                                                              //                             Font_Style: Montserrat.copyWith(
                                                              //                                 fontSize: 12.sp,
                                                              //                                 color: const Color(0xff707070),
                                                              //                                 height: 1.6.h),
                                                              //                             type: TextInputType.text,
                                                              //                             BorderRaduis: 10,
                                                              //                             BorderColor: const Color(0xfffa3858),
                                                              //                             HintText_Style: Montserrat.copyWith(
                                                              //                                 fontSize: 12.sp,
                                                              //                                 color: const Color(0xff707070),
                                                              //                                 height: 1.6.h),
                                                              //                             textAlign: TextAlign.left,
                                                              //
                                                              //                             obscureText: true,
                                                              //                             FontSize: 16,
                                                              //                             hidePass: false,
                                                              //                             width: 308,
                                                              //                             validator: null,
                                                              //                             Controller: TextEditingController(),
                                                              //                             Hint_Text: "Comment",
                                                              //                             Onchanged: (value) {
                                                              //
                                                              //                             },
                                                              //                             IconClicked: () {
                                                              //                               // if (Controller.text.isNotEmpty){
                                                              //                               //   Bloc.add(AddComment((b) => b
                                                              //                               //     ..post=Video_ID
                                                              //                               //     ..comment = Controller.text
                                                              //                               //     ..user = Sender_ID
                                                              //                               //     ..product = Product_ID
                                                              //                               //   ));
                                                              //                               //   Controller.text = "";
                                                              //                               // }
                                                              //
                                                              //                             },
                                                              //                             Onsubmitted: (value){
                                                              //                               // if (Controller.text.isNotEmpty){
                                                              //                               //   Bloc.add(AddComment((b) => b
                                                              //                               //     ..post=Video_ID
                                                              //                               //     ..comment = Controller.text
                                                              //                               //     ..user = Sender_ID
                                                              //                               //     ..product = Product_ID
                                                              //                               //   ));
                                                              //                               //   Controller.text = "";
                                                              //                               // }
                                                              //
                                                              //
                                                              //                             },
                                                              //                             TextInputaction: TextInputAction.done,
                                                              //                             FoucesNode: FocusNode(),
                                                              //                             Hieght: 60,
                                                              //                             MaxLines: 1
                                                              //                         ),
                                                              //                       ),
                                                              //                     ),
                                                              //                   ],
                                                              //                 ),
                                                              //               );
                                                              //
                                                              //
                                                              //     }
                                                              // );




                                                            },
                                                            icon: SvgPicture.asset(
                                                              "Assets/images/instagram-comment-13416.svg",
                                                              color: Colors.white,
                                                              width: 22.w,
                                                              height: 23.h,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(
                                                              top: 4.h, left: 2.w),
                                                          child: Text(
                                                            '45',
                                                            style: Montserrat.copyWith(
                                                              fontSize: 11.sp,
                                                              color: const Color(
                                                                  0xffffffff),
                                                              fontWeight:
                                                              FontWeight.w600,
                                                            ),
                                                            softWrap: true,
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                    InkWell(
                                                      onTap: (){
                                                        //  _onShareWithResult(context,"HELLO");
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(top: 22.h),
                                                        width: 35.w,
                                                        height: 35.h,
                                                        child: IconButton(
                                                          padding: EdgeInsets.zero,
                                                          constraints: BoxConstraints(),
                                                          onPressed: () {
                                                            if (widget.ShowPolicyContainer!){
                                                              widget.ontap6!.call();
                                                            }

                                                            DynamicLinksProvider().CreateLink("Reels", widget.AllPosts![index].id! ).then((value) {
                                                              print("value: ${value}");
                                                              _onShareWithResult(
                                                                  Context,
                                                                  value);
                                                            });

                                                          },
                                                          icon: SvgPicture.asset(
                                                            "Assets/images/send-4008.svg",
                                                            color: Colors.white,
                                                            width: 26.w,
                                                            height: 23.h,
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    Row(
                                                      children: [
                                                        Center(
                                                          child: Container(
                                                             // color: Colors.red,
                                                               margin: EdgeInsets.only(  top: 21.h,left: 10.w),
                                                              child: LikeButton(
                                                                isLiked: widget.AllPosts![index].SaveStatus,
                                                                onTap: onSaveButtonTapped,
                                                                // size: 27.w,
                                                                circleColor: CircleColor(start:Colors.grey, end: Colors.yellowAccent),
                                                                bubblesColor: BubblesColor(
                                                                    dotPrimaryColor: Colors.yellow,
                                                                    dotSecondaryColor: Colors.green
                                                                ),
                                                                likeBuilder: (bool isLiked) {
                                                                  print(isLiked);
                                                                  LikeandSaveCurrent_Index = index;
                                                                  return
                                                                      Column(
                                                                        children: [
                                                                          SvgPicture.asset(
                                                                            isLiked?
                                                                            "Assets/images/Save-icon-30ks.svg"
                                                                           : "Assets/images/save-instagram-black-lineal-18315.svg"
                                                                            ,width: 24.w,
                                                                          height: 23.h,
                                                                          color: isLiked ? Colors.yellow :  Colors.white,
                                                                          ),
                                                                        ],
                                                                      );


                                                                //  size: 27.w,
                                                                },
                                                              ),
                                                            ),
                                                        ),
                                                      ],
                                                    ),
                                                    // Container(
                                                    //   margin:
                                                    //   EdgeInsets.only(top: 22.h),
                                                    //   width: 35.w,
                                                    //   height: 35.h,
                                                    //   child: IconButton(
                                                    //     padding: EdgeInsets.zero,
                                                    //     constraints: BoxConstraints(),
                                                    //     onPressed: () {
                                                    //       if (widget.ShowPolicyContainer!){
                                                    //         widget.ontap6!.call();
                                                    //       }
                                                    //       widget.Bloc!.add(SwitchSaveButton((b) => b..index = index));
                                                    //     },
                                                    //     icon: SvgPicture.asset(
                                                    //      ! widget.State!.Save_isLoading!?
                                                    //       widget.State!.AllPosts![index].SaveStatus!
                                                    //             ?"Assets/images/Save-icon-30ks.svg"
                                                    //             :"Assets/images/save-instagram-black-lineal-18315.svg"
                                                    //       :"Assets/images/Save-icon-30ks.svg",
                                                    //       color:widget.State!.AllPosts![index].SaveStatus!
                                                    //           ?Color(0xffffff00): Colors.white,
                                                    //       width: 23.w,
                                                    //       height: 23.h,
                                                    //     ),
                                                    //   ),
                                                    // ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ));
                                }))))
                    :  Container(
                          width: w,
                          height: h,
                          color: Colors.black,child: Center(child: Container(child:Image.asset("Assets/images/2.png",width: 116.w,)),),),




                Positioned(
                    top: 20.h,
                    right: 32.w,
                    child: SafeArea(
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed:widget.ontap4,
                            icon: Icon(
                              Icons.search_outlined,
                              color: Colors.black,
                              size: 30.w,
                            )))),
                Positioned(
                    top: 18.h,
                    left: 34.w,
                    child: SafeArea(
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: widget.ontap2,
                            icon: SvgPicture.asset(
                                "Assets/images/store-1977.svg")))),

              ],

            ),
          );
        });
  }
}
