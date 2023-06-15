import 'dart:ffi';
import 'dart:ui'as ui;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:Yumgott/main.dart';
import 'package:Yumgott/models/UserDataModel/DataModel.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:image_picker/image_picker.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/ProductDetailsScreen/pages/ProductDetails.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Bloc.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Event.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_State.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';
import 'package:Yumgott/Core/widgets/ProductListTile.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/Core/constants/strings.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
final pref = sl<IPrefsHelper>();

Future<void> SaveUser(DataModel USER,String token)async{
  await pref.saveUser(USER,token);
}
Future<void> SetToken(String Token) async {
  await pref.SetToken(Token);
}

Future<void> GetUserData()async{
  DataModel user =  await pref.getUser();
  ID = user.id!;
  name = user.name!;
//  Boi = user.bio!;
  image = user.photo!;
}



Widget listLoader({context}) {
  return SpinKitCircle(
    color: const Color(0xffFA3858),
    size: 40.0.w,
  );
}

Widget listLoader2({context}) {
  return SpinKitChasingDots(
    color: const Color(0xffFA3858),
    size: 40.0.w,
  );
}

BorderRadiusGeometry border(
    double bottomLeft, double bottomRight, double topLeft, double topRight) {
  return BorderRadius.only(
    bottomLeft: Radius.circular(bottomLeft.r),
    bottomRight: Radius.circular(bottomRight.r),
    topLeft: Radius.circular(topLeft.r),
    topRight: Radius.circular(topRight.r),
  );
}

Theme RemoveHighlight(Widget W) {
  return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: W);
}

OutlineInputBorder OutlineBorderWidget(Color color, double BorderRaduis,double width) {
  return OutlineInputBorder(
    gapPadding: 0,
    borderSide: BorderSide(color: color, width: width.w),
    borderRadius: BorderRadius.circular(BorderRaduis),
  );
}

UnderlineInputBorder UnderlineInputWidget(Color color, double BorderRaduis) {
  return UnderlineInputBorder(
      borderSide: BorderSide(color: color,width: 0.5.w),
      borderRadius: BorderRadius.circular(BorderRaduis));
}

Container AppYumgottTitle() {
  return Container(
    padding: EdgeInsets.only(top: 136.h),
    child: Center(
      child: Text(
        'Yumgott',
        style: SegouUI.copyWith(fontSize: 32.sp, color: const Color(0xff015595)),
      ),
    ),
  );
}

void ShowAnimatedTopbar( BuildContext c, String tEXT, AnimatedSnackBarType type) async {

  AnimatedSnackBar.material(
    tEXT,
    type: type,
    duration: const Duration(seconds: 5),
    mobileSnackBarPosition: MobileSnackBarPosition.top,
  ).show(c);
}
void showToast( BuildContext c, String tEXT,bool error) async {
  FToast fToast;
  fToast = FToast();
  fToast.init(c);

  Widget toast = Container(
    padding:  EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 12.0.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0.r),
      color:error? Colors.red: Colors.greenAccent,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(error?Icons.error:Icons.check,color: Colors.white,),
        SizedBox(
          width: 12.0.w,
        ),
    Container(
      width: 240.w,
      child:     Text(tEXT,style: Montserrat.copyWith(
        fontSize: 12.sp,
        color:Colors.white,
        fontWeight: FontWeight.w600,
      ),
        maxLines: 3,
        softWrap: true,
        strutStyle: StrutStyle(height: 1.5.h),
      ),
    )

      ],
    ),
  );


  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: Duration(seconds: 3),
  );
}


void PushNavigator(BuildContext Context, Widget builder,VoidCallback ontap) async {
  WidgetsBinding.instance.addPostFrameCallback((_) => Navigator.push(
        Context,
        MaterialPageRoute(
          builder: (context) => builder,
        ),
      ).then((value) {
    ontap.call();
  }
  ));
}

void PushReplacementsNavigator(BuildContext Context, Widget builder) async {
  WidgetsBinding.instance.addPostFrameCallback((_) =>
  Navigator.pushReplacement(
    Context,
    MaterialPageRoute(
      builder: (context) => builder,
    ),
  ));
}

void PushAndRemoveUtil(BuildContext Context, Widget builder) async {
  WidgetsBinding.instance.addPostFrameCallback((_) =>
  Navigator.pushAndRemoveUntil<void>(
    Context,
    MaterialPageRoute<void>(builder: (BuildContext context) => builder),
          (Route<dynamic> route) => false
  ));
}

Widget ORWith_Widget(double w) {
  return Container(
    width: w,
    margin: EdgeInsets.only(left: 43.w,right: 42.w),
    child: Row(
      children: [
        Container(
          width: 105.97.w,
          height: 1.h,
          color: Colors.white,
        ),
        Container(
          margin: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Text(
            'Or With',
            style: SegouUI.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 9.sp,
              color: Colors.white
            ),
          ),
        ),
        Container(
          width: 105.97.w,
          height: 1.h,
          color: Colors.white,
        ),
      ],
    ),
  );
}

Widget TwoLines(double w){
  return  Column(
    children: [
      Container(
          width: w,
          padding: EdgeInsets.only(left: 15.5.w, right: 15.5.w),
          child: Row(
              children: [
                Container(
                  width: 390.w,
                  height: 2.h,
                  color: const Color(0xff077BCD),
                ),
              ]
          )
      ),
      SizedBox(height: 3.h,),
      Container(
          width: w,
          padding: EdgeInsets.only(left: 15.5.w, right: 15.5.w),
          child: Row(
              children: [
                Container(
                  width: 390.w,
                  height: 2.h,
                  color: const Color(0xff077BCD),
                ),
              ]
          )
      )
    ],
  );
}

Widget Application_Background(double w,double h,int sigx,int sigy){
  return    Container(
    width: w,
    height: h,
    child: ImageFiltered(
      imageFilter: ui.ImageFilter.blur(sigmaX: 8, sigmaY: 8),
      child: Image.asset('Assets/images/brooke-lark-HlNcigvUi4Q-unsplash.png',fit: BoxFit.cover,width: w,height: h,),
    ),
  );
}

Widget getAlbum(albumImg) {
  return Container(
    width: 50.w,
    height: 50.h,
    decoration: const BoxDecoration(
      // shape: BoxShape.circle,
      // color: black
    ),
    child: Stack(
      children: <Widget>[
        Container(
          width: 50.w,
          height: 50.h,
          decoration: const BoxDecoration(shape: BoxShape.circle, color: black),
        ),
        Center(
          child: Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        albumImg),
                    fit: BoxFit.cover)),
          ),
        )
      ],
    ),
  );
}

Widget getIcons(icon, count, size) {
  return Container(
    child: Column(
      children: <Widget>[
        Icon(icon, color: white, size: size),
        SizedBox(
          height: 5.h,
        ),
        Text(
          count,
          style: TextStyle(
              color: white, fontSize: 12.sp, fontWeight: FontWeight.w700),
        )
      ],
    ),
  );
}

Widget getProfile(img) {
  return Container(
    width: 50.w,
    height: 60.h,
    child: Stack(
      children: <Widget>[
        Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
              border: Border.all(color: white),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      img),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 3.h,
            left: 18.w,
            child: Container(
              width: 20.w,
              height: 20.h,
              decoration:
              const BoxDecoration(shape: BoxShape.circle, color: primary),
              child: Center(
                  child: Icon(
                    Icons.add,
                    color: white,
                    size: 15.w,
                  )),
            ))
      ],
    ),
  );
}

Widget Backbuttonn(VoidCallback ontap,Color Colorr){
  return Material(
    color: Colors.transparent,
    child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: ontap,
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color:Colorr,
          size: 21.63.w,
        )
    )
  );
}

BorderRadiusGeometry Borderr(double Raduis){
  return BorderRadius.only(
    bottomLeft: Radius.circular(Raduis.r),
    bottomRight: Radius.circular(Raduis.r),
    topLeft: Radius.circular(Raduis.r),
    topRight: Radius.circular(Raduis.r),
  );
}

BorderRadiusGeometry Borderrr(double bottomLeft,double bottomRight,double topLeft,double topRight){
  return BorderRadius.only(
    bottomLeft: Radius.circular(bottomLeft.r),
    bottomRight: Radius.circular(bottomRight.r),
    topLeft: Radius.circular(topLeft.r),
    topRight: Radius.circular(topRight.r),
  );
}

Widget AddVerticalSpace(double num){
  return SizedBox(height: num,);
}

Widget AddHorizentalSpace(double num){
  return SizedBox(width: num,);
}

ShapeBorder shape(double num){
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(num.r),
    ),
  );
}

Widget VerticalDividerr(){
  return SvgPicture.string(
    '<svg viewBox="165.7 330.0 1.0 23.4" ><path transform="translate(-1327.0, 0.0)" d="M 1492.664428710938 330 L 1492.664428710938 353.3564453125" fill="none" stroke="#707070" stroke-width="0.30000001192092896" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
    allowDrawingOutsideViewBox: true,
  );
}


Future<void> ShowCommentSection(
    BuildContext contexts,
    TextEditingController Controller,
    Function(String) onsubmitted,
    ShortVidoesBloc Bloc,
    String Video_ID,
    String Product_ID,
    String Sender_ID){

 // TextEditingController controllerr = TextEditingController();
  FocusNode focusNode = FocusNode();
  bool diditONCE = true;
  return

    showModalBottomSheet<void>(
        context: contexts,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0.r),
            topLeft: Radius.circular(20.0.r),
          )
        ),
        builder: (BuildContext bc){

          var h = MediaQuery.of(contexts).size.height;
          var w = MediaQuery.of(contexts).size.width;
       return KeyboardVisibilityBuilder(
         builder: (context, isKeyboardVisible) {
           return BlocBuilder(
         bloc: Bloc,
         builder: (BuildContext context, ShortVideosState state) {
           Bloc.add(ChangeKeyBaordStatus((b) => b..value = isKeyboardVisible));

           if (diditONCE){
             //todo : call request
           //  Bloc.add(GetComments((b)=>b..Vidoe_ID= Video_ID));
             diditONCE = false;
             Bloc.add(ChangeKeyBaordStatus((b) => b..value = isKeyboardVisible));

           }

           return Container(
                   height: 685.h,
                   child: Stack(
                     children:[
                       Positioned(
                         top: 0,
                         left: 0,
                         right: 0,
                         child: InkWell(
                           onTap: (){
                             print(isKeyboardVisible);
                             print(state.KeyBoardStatus);
                             print(MediaQuery
                                 .of(context)
                                 .viewInsets
                                 .bottom);
                           },
                           child: Container(
                             width: w,
                             height: 685.h,
                             child: Column(children: [
                               Container(
                                 width: w,
                                 margin: EdgeInsets.only(top: 24.h,left: 148.w),
                                 child: Text(
                                   'Comment',
                                   style:Montserrat.copyWith(
                                     fontSize: 15.sp,
                                     color: const Color(0xff707070),
                                     fontWeight: FontWeight.w800,
                                   ),
                                   softWrap: false,
                                 ),),

                               Container(
                                   margin: EdgeInsets.only(left: 17.9.w,top: 8.8.h,right: 33.2.w),
                                   child: Divider(height: 2.h,color: const Color(0xff707070),)),
                               // state.GetCategorysuccess!
                               //     ?
                               state.success!?
                               Container(
                                   width: w,
                                   height: 525.2.h,
                                   margin: EdgeInsets.only(
                                       top: 27.2.h, left: 33.w, right: 26.w),
                                   child: ScrollConfiguration(
                                     behavior: MyBehavior(),
                                     child: ListView.separated(
                                       cacheExtent: 500,
                                       physics: AlwaysScrollableScrollPhysics(
                                           parent: BouncingScrollPhysics()),
                                       scrollDirection: Axis.vertical,
                                       itemCount: state.AllComments!.length,
                                       itemBuilder: (BuildContext context, int index) {
                                         return InkWell(
                                           onTap: () {
                                             //    PushNavigator(context, CategoryRestaurants(Category_ID: state.GetCategories!.data![index].id!,));
                                           },
                                           child:
                                           Row(
                                             crossAxisAlignment: CrossAxisAlignment
                                                 .start,
                                             children: [
                                               Container(
                                                 width: 54.w,
                                                 height: 79.h,
                                                 child: Column(
                                                   mainAxisAlignment: MainAxisAlignment
                                                       .start,
                                                   children: [
                                                     Container(
                                                         width: 54.w,
                                                         height: 79.h,
                                                         child:
                                                         Column(
                                                           children: [
                                                             //
                                                             CachedImages(Image:  state.AllComments![index].ProfileImage.toString(), Raduis: 20.5)


                                                           ],
                                                         )
                                                     ),
                                                   ],
                                                 ),
                                               ),
                                               Row(
                                                 crossAxisAlignment: CrossAxisAlignment
                                                     .end,
                                                 children: [
                                                   Column(
                                                     children: [
                                                       Container(
                                                         width: (231).w,
                                                         child: Row(
                                                           children: [
                                                             Column(
                                                               children: [

                                                                 Container(
                                                                   width: 231.w,
                                                                   child: Text(
                                                                     state.AllComments![index].UserName.toString(),
                                                                     style: SegouUI
                                                                         .copyWith(
                                                                       fontSize: 12.sp,
                                                                       color: const Color(
                                                                           0xff000000),
                                                                       fontWeight: FontWeight
                                                                           .w700,
                                                                     ),
                                                                     maxLines: 1,
                                                                     overflow: TextOverflow
                                                                         .ellipsis,
                                                                     strutStyle: StrutStyle(
                                                                         height: 1.3.h),
                                                                     softWrap: true,
                                                                   ),
                                                                 ),
                                                                 Container(
                                                                     width: 231.w,
                                                                     height: 11.h,
                                                                     margin: EdgeInsets
                                                                         .only(
                                                                       top: 5.h,),
                                                                     child:
                                                                     ScrollConfiguration(
                                                                         behavior: MyBehavior(),
                                                                         child: ListView
                                                                             .separated(
                                                                           cacheExtent: 500,
                                                                           physics: NeverScrollableScrollPhysics(
                                                                               parent: BouncingScrollPhysics()),
                                                                           scrollDirection: Axis
                                                                               .horizontal,
                                                                           itemCount: 5,
                                                                           itemBuilder: (
                                                                               BuildContext context,
                                                                               int index) {
                                                                             return Column(
                                                                               children: [
                                                                                 Container(
                                                                                   width: 10
                                                                                       .w,
                                                                                   height: 9
                                                                                       .h,
                                                                                   child:
                                                                                   IconButton(
                                                                                     onPressed: () {},
                                                                                     padding: EdgeInsets
                                                                                         .all(
                                                                                         0),
                                                                                     icon: Icon(
                                                                                       Icons
                                                                                           .star,
                                                                                       color: Colors
                                                                                           .amber,
                                                                                       size: 10
                                                                                           .w,
                                                                                     ),
                                                                                   ),
                                                                                 )
                                                                               ],
                                                                             );
                                                                           },
                                                                           separatorBuilder: (
                                                                               BuildContext context,
                                                                               int index) {
                                                                             return SizedBox(
                                                                               width: 0
                                                                                   .w,);
                                                                           },
                                                                         )
                                                                     )
                                                                 ),
                                                                 Container(
                                                                   margin: EdgeInsets
                                                                       .only(top: 5.h),
                                                                   width: 231.w,
                                                                   child: Text(
                                                                     state.AllComments![index].comment.toString(),
                                                                     style: SegouUI.copyWith(
                                                                         fontSize: 10.sp,
                                                                         color: const Color( 0xff707070),
                                                                         fontWeight: FontWeight.w700,
                                                                         height: 1.5.h
                                                                     ),
                                                                     softWrap: true,
                                                                   ),
                                                                 )
                                                               ],
                                                             ),

                                                           ],
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                   Container(
                                                     width: 25.w,
                                                     child: Column(
                                                       children: [
                                                         Container(
                                                           child: Text(
                                                             timeago.format(DateTime.parse(state.AllComments![index].time.toString())),
                                                             style: SegouUI.copyWith(
                                                               fontSize: 4.sp,
                                                               color: const Color(
                                                                   0xff707070),
                                                             ),
                                                             softWrap: false,
                                                           ),
                                                         )
                                                       ],
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                         );
                                       },
                                       separatorBuilder: (BuildContext context,
                                           int index) {
                                         return SizedBox(
                                           height: 23.h,
                                         );
                                       },
                                     ),
                                   ))
                                   :state.isLoading == true
                                   ?Container(
                                   width: w,
                                   height: 525.2.h,
                                   margin: EdgeInsets.only(
                                       top: 27.2.h, left: 33.w, right: 26.w),child: Center(child: listLoader(context: context)))
                                   :Container(),
                             ],),
                           ),
                         ),
                       ),
                       Positioned(
                         left: 0,
                         right: 0,
                         bottom:state.KeyBoardStatus!?350.h:0,
                         //res.keyboardHeight,
                         child: Container(
                           width: w,
                           margin: EdgeInsets.only(
                               left: 34.w, right: 33.w, bottom: 22.h),
                           child: textfeild(
                               isDense: true,
                               isCollapsed: true,
                               PrefixImage: "no",
                               //   topContentPadding: 10,
                               verticalPaddind: 10,
                               BorderWIdth: 1,
                               FillColor: Colors.white,
                               prefixIconClicked: () {},
                               Want_prefixIconClicked: false,
                               Want_Send_Icon: true,
                               BorderType: "Outline",
                               Font_Style: Montserrat.copyWith(
                                   fontSize: 12.sp,
                                   color: const Color(0xff707070),
                                   height: 1.6.h),
                               type: TextInputType.text,
                               BorderRaduis: 10,
                               BorderColor: const Color(0xfffa3858),
                               HintText_Style: Montserrat.copyWith(
                                   fontSize: 12.sp,
                                   color: const Color(0xff707070),
                                   height: 1.6.h),
                               textAlign: TextAlign.left,

                               obscureText: true,
                               FontSize: 16,
                               hidePass: false,
                               width: 308,
                               validator: null,
                               Controller: Controller,
                               Hint_Text: "Comment",
                               Onchanged: (value) {},
                               IconClicked: () {
                                 if (Controller.text.isNotEmpty){
                                   Bloc.add(AddComment((b) => b
                                     ..post=Video_ID
                                     ..comment = Controller.text
                                     ..user = Sender_ID
                                     ..product = Product_ID
                                   ));
                                   Controller.text = "";
                                 }

                               },
                               Onsubmitted: (value){
                                 if (Controller.text.isNotEmpty){
                                   Bloc.add(AddComment((b) => b
                                     ..post=Video_ID
                                     ..comment = Controller.text
                                     ..user = Sender_ID
                                     ..product = Product_ID
                                   ));
                                   Controller.text = "";
                                 }


                               },
                               TextInputaction: TextInputAction.done,
                               FoucesNode: focusNode,
                               Hieght: 60,
                               MaxLines: 1
                           ),
                         ),
                       ),
                     ],
                   ),
                 );
               }
           );
         },
       );

        }

          );
        }



Widget DropDownButton(
    PanelController controller
    ,HomePageBloc _HomeBloc,
    BuildContext context,
    Function(String)? Onchanged,
    TextEditingController _SearchControler,){

bool DIditonce = true;
  FocusNode node = FocusNode();
 var h = MediaQuery.of(context).size.height;
 var w = MediaQuery.of(context).size.width;
  // final _formkey3 = GlobalKey<FormState>();

  List<String> RangePrices = [];

  List<String> StarRange = [];
  return BlocBuilder(
      bloc: _HomeBloc,
      builder: (BuildContext context, HomePageState state)
  {

    if (DIditonce){
      for(int i =0;i<state.start_Range_Price!.length;i++){
        RangePrices.add("${state.start_Range_Price![i]}kr - ${state.End_Range_Price![i]}kr");
        if (i<5)
        StarRange.add("${i+1} Star");
      }
      RangePrices.add("Other");
      DIditonce = false;
    }

    return
   SlidingUpPanel(
        isDraggable: true,
        slideDirection: SlideDirection.DOWN,
        controller: controller,
        maxHeight: 754.h,
        minHeight: 0,
        parallaxEnabled: true,
        parallaxOffset: .5,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0.r),
            bottomRight: Radius.circular(20.0.r)),
        onPanelSlide:(double pos){},
         onPanelClosed: (){
           _SearchControler.clear();
           // _HomeBloc.add(ChangeSelectedPriceValue((b) => b..value = ""));
           // _HomeBloc.add(ChangeSelectedEvaluationValue((b) => b..value = ""));
         },
        panel:
        Container(
          height: 700.h,
          child: Column(
            children: [
              //
              // Container(
              //   margin: EdgeInsets.only(top: 12.h),
              //   child:textfeild(
              //     verticalPaddind: 20,
              //     BorderWIdth: 1,
              //     PrefixImage: "Search",
              //     prefixIconClicked: () {},
              //     Want_prefixIconClicked: true,
              //     Want_Send_Icon: false,
              //     BorderType: "Outline",
              //     Font_Style: Montserrat.copyWith(
              //         fontSize: 12.sp,
              //         color: Colors.black,
              //         height: 1.6.h
              //     ),
              //     type: TextInputType.text,
              //     BorderRaduis: 10,
              //     BorderColor: Color(0xffFA3858),
              //     HintText_Style: Montserrat.copyWith(
              //       fontSize: 14.sp,
              //       color: Color(0xff707070),
              //       fontWeight: FontWeight.w600,
              //     ),
              //     textAlign: TextAlign.left,
              //     FontSize: 16,
              //     hidePass: false,
              //     FillColor: Colors.white,
              //     width: 308,
              //     Hieght: 50,
              //     MaxLines: 1,
              //     FoucesNode: FocusNode(),
              //     Onsubmitted: (String) {
              //       _HomeBloc.add(FilterProducts((b) => b..Keyword =String));
              //     },
              //     TextInputaction: TextInputAction.done,
              //     Controller: TextEditingController(),
              //     Hint_Text: "Search",
              //     Onchanged: (String) {
              //       _HomeBloc.add(FilterProducts((b) => b..Keyword = String));
              //     },
              //     validator: (valse) => null,
              //     IconClicked: () {
              //    //   _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text));
              //     },
              //     obscureText: true,
              //   ),
              // ),
              Container(
                width: w,
                    height: 185.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20.0.r),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x0d000000),
                          offset: const Offset(0, 3),
                          blurRadius: 6.r,
                        ),
                      ],
                    ),
                child:
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 21.w,top: 40.h),
                          child: Backbuttonn(() {
                            controller.close();
                          }, Colors.black)),
                      Container(
                        margin: EdgeInsets.only(left: 115.9.w,top: 40.h),
                        child: Text(
                          'Search',
                          style: Montserrat.copyWith(
                            fontSize: 20.sp,
                            color: const Color(0xff3b2d2f),
                            fontWeight: FontWeight.w700,
                          ),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),

                  Container(
                     width: 308.w,
                      height: 50.h,
                    margin: EdgeInsets.only(top: 12.h),
                    child:textfeild(
                      isDense: true,
                      isCollapsed: true,
                        verticalPaddind: 20,
                        BorderWIdth: 1,
                        PrefixImage: "Search",
                        prefixIconClicked: () {
                          print(_SearchControler.text);
                          if (state.SelectedPriceValue!.isEmpty)
                            _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text));
                          else
                            _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text
                              ..Price_index = RangePrices.indexOf(state.SelectedPriceValue!)
                            ));      },
                        Want_prefixIconClicked: true,
                        Want_Send_Icon: false,
                        BorderType: "Outline",
                        Font_Style: Montserrat.copyWith(
                            fontSize: 12.sp,
                            color: const Color(0xff707070),
                            height: 1.6.h
                        ),
                        type: TextInputType.text,
                        BorderRaduis: 10,
                        BorderColor: const Color(0xffFA3858),
                        HintText_Style: Montserrat.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff707070),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                        FontSize: 16,
                        hidePass: false,
                        FillColor: Colors.white,
                        width: 308,
                        Hieght: 50,
                        MaxLines: 1,
                        FoucesNode:FocusNode(),
                        Onsubmitted:(value){
                          if (state.SelectedPriceValue!.isEmpty)
                            _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text));
                          else
                            _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text
                              ..Price_index = RangePrices.indexOf(state.SelectedPriceValue!)
                            ));     },
                        TextInputaction: TextInputAction.done,
                        Controller: _SearchControler,
                        Hint_Text: "Search",
                        Onchanged:(value){
                        if (state.SelectedPriceValue!.isEmpty)
                          _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text));
                        else
                          _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text
                          ..Price_index = RangePrices.indexOf(state.SelectedPriceValue!)
                          ));
                        },
                        validator: (valse) => null,
                        IconClicked: () {
                            },
                        obscureText: true,
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 3.w),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Price',
                                      textAlign: TextAlign.left,
                                      style: SegouUI.copyWith(
                                        fontSize: 12.sp,
                                        color: const Color(0xffccc2c2),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items: RangePrices.map(    (item) =>    DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    strutStyle: StrutStyle(height: 1.5.h),
                                    style: SegouUI.copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11.sp,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                //:Text("")
                              )).toList(),



                              value: state.SelectedPriceValue!.isNotEmpty?state.SelectedPriceValue:null,
                              onChanged:(value){

                                _HomeBloc.add(ChangeSelectedPriceValue((b) => b..value = value.toString()));
                                _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text
                                  ..Price_index = RangePrices.indexOf(state.SelectedPriceValue!)
                                ));

                                  },
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 20.w,
                                color: Color(0xff707070),
                              ),
                              iconSize: 20.w,
                              iconEnabledColor: Colors.yellow,
                              iconDisabledColor: Colors.black,
                              buttonHeight: 30.h,
                              buttonWidth: 98.w,
                              buttonPadding:
                              EdgeInsets.only(left: 8.w, right: 8.w),
                              buttonDecoration: BoxDecoration(
                                boxShadow: [
                                ],
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: Color(0xffFA3858),
                                ),
                                color: Colors.white,
                              ),
                              buttonElevation: 2,
                              itemHeight: 45.h,
                              dropdownMaxHeight: 100.h,
                              dropdownWidth: 98.w,
                              dropdownDecoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: border(10, 10, 0, 0),
                              ),
                              dropdownElevation: 8,
                              scrollbarRadius: Radius.circular(40.r),
                              scrollbarThickness: 6,
                              scrollbarAlwaysShow: false,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3.w),
                          child: Center(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                isExpanded: true,
                                hint: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Evaluation',
                                        textAlign: TextAlign.left,
                                        style: SegouUI.copyWith(
                                          fontSize: 12.sp,
                                          color: const Color(0xffccc2c2),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                items: StarRange.map(
                                        (item) =>
                                        DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: SegouUI.copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 11.sp,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          //:Text("")
                                        )).toList(),
                                value: state.SelectedEvaluationValue!.isNotEmpty?state.SelectedEvaluationValue:null,
                                onChanged: (value) {
                                  _HomeBloc.add(ChangeSelectedEvaluationValue((b) => b..value = value.toString()));
                                  if (state.SelectedPriceValue!.isEmpty)
                                    _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text));
                                  else
                                    _HomeBloc.add(FilterProducts((b) => b..Keyword = _SearchControler.text
                                      ..Price_index = RangePrices.indexOf(state.SelectedPriceValue!)
                                    ));      },
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 20.w,
                                  color: Color(0xff707070),
                                ),
                                iconSize: 20.w,
                                iconEnabledColor: Colors.yellow,
                                iconDisabledColor: Colors.black,
                                buttonHeight: 30.h,
                                buttonWidth: 100.w,
                                buttonPadding:
                                EdgeInsets.only(left: 8.w, right: 8.w),
                                buttonDecoration: BoxDecoration(
                                  boxShadow: [
                                  ],
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(
                                    color: Color(0xffFA3858),
                                  ),
                                  color: Colors.white,
                                ),
                                buttonElevation: 2,
                                itemHeight: 45.h,
                                dropdownMaxHeight: 100.h,
                                dropdownWidth: 98.w,
                                dropdownDecoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: border(10, 10, 0, 0),
                                ),
                                dropdownElevation: 8,
                                scrollbarRadius: Radius.circular(40.r),
                                scrollbarThickness: 6,
                                scrollbarAlwaysShow: false,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),),

              state.Searchsuccess!?
                      state.GetProductsSucess!
                      ? Expanded(
                          child: Container(
                                width: w,
                                height: 550.h,
                                margin: EdgeInsets.only(left: 28.6,right: 28.4.w),
                                child: ScrollConfiguration(
                                  behavior: MyBehavior(),
                                  child: ListView.separated(
                                    physics: const AlwaysScrollableScrollPhysics(
                                        parent: const BouncingScrollPhysics()),
                                    scrollDirection: Axis.vertical,
                                    itemCount: state.Filtered_Products!.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return
                                        InkWell(
                                        onTap: (){
                                          PushNavigator(context, ProductDetails(Data: state.Filtered_Products![index],),(){});
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(top:index==0?5.6.h:0 ),
                                          child: Column(
                                            children: [
                                              ProductListTile(DATA: state.Filtered_Products![index],),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return SizedBox(
                                        height: 29.h,
                                      );
                                    },
                                  ),
                                )),
                        )
                      : state.GetProductsIsLoading!
                      ? Center(child: listLoader(context: context))
                      : Container()

            :Container(),
            ],
          ),
        ),);
  }
  );
}




Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);

  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
      .buffer
      .asUint8List();
}


Future<String> createFileFromString(String Base64) async {
  final encodedStr = Base64;
  Uint8List bytes = base64.decode(encodedStr);
  String dir = (await getApplicationDocumentsDirectory()).path;
  File file = File(
      "$dir/" + DateTime.now().millisecondsSinceEpoch.toString() + ".aac");
  await file.writeAsBytes(bytes);
  return file.path;
}

// Future<String> EncodeVoice(String path) async {
//   var Voicepath =path;
//   var dir = await getApplicationDocumentsDirectory();
//   final uri = Uri.parse(Voicepath);
//   File file = File(uri.path);
//   List<int> fileBytes = await file.readAsBytes();
//   return base64Encode(fileBytes);
//   //
//   // if (type =="me"){
//   //   print(path);
//   //
//   //   SetMyVoiceMessage(Voicepath.toString());
//   //
//   // }
// }

Future<File> pickImage(ImageSource source) async {
  final image = await ImagePicker().pickImage(source: source);
  if (image == null) return File("");
  final imagePath = File(image.path);

  return imagePath;
}

String encodeImage(File path) {
  Uint8List bytes = path.readAsBytesSync();
  String base64Image = base64Encode(bytes);
  return base64Image;
}


CommonBottonSheet({required BuildContext context}){
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text('Enter your address',
                   // style: TextStyles.textBody2
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(   padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'adddrss'
                  ),
                  autofocus: true,
                ),
              ),
            ],
          ),
        ),
      ));
}