// ignore_for_file: non_constant_identifier_names, file_names, curly_braces_in_flow_control_structures
import 'dart:io';
import 'dart:ui';
import 'package:Yumgott/Core/Functions/Widgets.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:Yumgott/main.dart';
import 'package:Yumgott/models/UserDataModel/DataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/constants/strings.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';

import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:flutter/services.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:Yumgott/UI/Auth/SignUp_Screen/bloc/SignUp_bloc.dart';
import 'package:Yumgott/UI/Auth/SignUp_Screen/bloc/SignUp_event.dart';
import 'package:Yumgott/UI/Auth/SignUp_Screen/bloc/SignUp_state.dart';
import 'package:Yumgott/UI/Home/HomeScreen/pages/HomePage.dart';

import 'package:the_apple_sign_in/the_apple_sign_in.dart';
import 'package:firebase_messaging/firebase_messaging.dart' as F;


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

final RegExp regExpEmail = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

class _SignUpState extends State<SignUp> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _pASSController = TextEditingController();
  final TextEditingController _UsernameController = TextEditingController();
  final TextEditingController _PHoneController = TextEditingController();
  final TextEditingController _CPassController = TextEditingController();
  var _formkey1 = GlobalKey<FormState>();
  String Fcmtoken ="";


  Future<void> getFcmToken() async {
    F.FirebaseMessaging.instance.getToken().then((FcmTOken) {
      return Fcmtoken = FcmTOken!;

    });
  }



  GoogleSignIn? googleSignIn;

  late FocusNode _EmailFocusNode;
  late FocusNode _PassFocusNode;

  bool DiDitOnce = false;
  final pref = sl<IPrefsHelper>();
  GoogleSignInAccount? googleSignInAccount;
  final _SignUpbloc = sl<SignUpBloc>();


  Future<void> signUpWithFacebook() async {
    try {
      bool result = await InternetConnectionChecker().hasConnection;
      if (result == true) {
        String? _token;
        var facebookToken = await FacebookLogin().logIn(permissions: [
          FacebookPermission.publicProfile,
          FacebookPermission.email
        ]);
        _token = facebookToken.accessToken?.token;

        print(_token);
        if (_token != null) {
          DiDitOnce = true;
          _SignUpbloc.add(SignUpWithFacebook((b) => b
            ..AccessToken = _token
          ));
        }
      } else {
        ShowAnimatedTopbar(context, 'Check your internet connection',AnimatedSnackBarType.error);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signUPWithGoogle({required BuildContext context}) async {
    try {
      String Email;
      String PhotoUrl;
      String Name;
      String? AccessToken;
      // googleSignIn!.signOut();
      bool result = await InternetConnectionChecker().hasConnection;
      if (result == true) {
        googleSignIn = GoogleSignIn(    scopes: [
          'email',
          //   'https://www.googleapis.com/auth/contacts.readonly',
          "https://www.googleapis.com/auth/userinfo.profile"
        ],);
        // googleSignIn.signOut();
        googleSignInAccount = await googleSignIn!.signIn();

        if (googleSignInAccount != null) {
          googleSignInAccount!.authentication.then((value) {
            debugPrint("accessToken : ${value.accessToken}");
            debugPrint("idToken : ${value.idToken}");
            Email = googleSignInAccount!.email;
            PhotoUrl = googleSignInAccount!.photoUrl.toString();
            Name = googleSignInAccount!.displayName.toString();
            print(Email);
            print(PhotoUrl);
            print(Name);
            _SignUpbloc.add(SignUpWithGoogle((b) => b
              ..Name = Name
              ..image = PhotoUrl
              ..Email = Email
            ));
          });


          // _SignUpbloc.add(SignUpGoogle((b) => b
          //   ..Email = Email
          //   ..avatar = PhotoUrl
          //   ..name = Name
          //   ..fcmToken = Fcmtoken));

          DiDitOnce = true;
        }
      } else {
        ShowAnimatedTopbar(context, 'Check your internet connection',AnimatedSnackBarType.error);
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  void initState() {
    _EmailFocusNode = FocusNode();
    _PassFocusNode = FocusNode();

   getFcmToken();
    super.initState();
  }



  @override
  void dispose() {
 //    _EmailController.dispose();
 // _EmailController.dispose();
 // _pASSController.dispose();
 // _UsernameController.dispose();
 // _PHoneController.dispose();
 // _CPassController.dispose();
    super.dispose();
  }

  // Future<void> SetToken(String Token) async {
  //   await pref.SetToken(Token);
  // }

  @override
  Widget build(BuildContext Context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _SignUpbloc,
        builder: (BuildContext context, SignUpState state) {


          if (DiDitOnce){
            if (state.success!){
              if (state.data!.access_token == null){
                ShowAnimatedTopbar(context,state.data!.message!,AnimatedSnackBarType.error);
                DiDitOnce = false;
              }else if(state.data!.code==200) {
              //SaveUser(state.data!.data!,state.data!.access_token.toString());
                SetToken(state.data!.access_token.toString());
                tokens = state.data!.access_token.toString();
                ShowAnimatedTopbar(context, state.data!.message!,AnimatedSnackBarType.success);
                PushNavigator(Context, HomeScreen(),(){});
                DiDitOnce = false;
                //todo : make if statement to check if restaurant and navigate to Correct screen

              }
            }
          }

          return WillPopScope(
            onWillPop:() async=>true,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.black,
              key: _scaffoldKey,
              body: SafeArea(
                child: Stack(
                  children: [

                    Application_Background(w,h,9,9),
                    Container(
                        width: w,
                        height: h,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 56.h),
                                width: 316.w,
                                height: 504.h,
                                decoration: BoxDecoration(
                                  color:  Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10.0.r),
                                ),
                                child: Form(
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  key: _formkey1,
                                  child: Stack(
                                    children: [
                                  Positioned(
                                        top: 42.h,
                                        left: 0,
                                        right: 0,
                                        child: Center(
                                          child: Container(
                                            child: Text(
                                              'Create an account',
                                              style: Montserrat.copyWith(
                                                fontSize: 18.sp,
                                                color:Color(0xff707070),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              softWrap: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                  Positioned(
                                    top: 71.h,
                                    left: 0,
                                    right: 0,
                                    child:
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(top: 7),
                                          child:
                                          Text(
                                            'Connect with your friends today!',
                                            style: Montserrat.copyWith(
                                            fontSize: 10,
                                            color: const Color(0xff707070),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          softWrap: false,
                                          ),
                                        ),
                                      ),),
                                  Positioned(
                                    top: 123.h,
                                    left: 0,
                                    right: 0,
                                    child:
                                      Center(
                                        child: Container(
                                          child: textfeild(
                                            verticalPaddind:10,
                                            BorderWIdth: 0.5,
                                            PrefixImage: "Assets/images/mail.svg",
                                            prefixIconClicked: () {},
                                            Want_prefixIconClicked: false,
                                            Want_Send_Icon: false,
                                            BorderType: "Outline",
                                            Font_Style: Montserrat.copyWith(
                                                fontSize: 12.sp,
                                                color: Color(0xff707070),
                                                height: 1.6.h),
                                            type: TextInputType.text,
                                            BorderRaduis: 31,
                                            BorderColor: Color(0xff707070),
                                            HintText_Style: Montserrat.copyWith(
                                              fontSize: 12.sp,
                                              color: Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                            FontSize: 16,
                                            hidePass: false,
                                            FillColor:   Colors.white,
                                            width: 290,
                                            Hieght: 55,
                                            MaxLines: 1,

                                            FoucesNode: FocusNode(),
                                            Onsubmitted: (String) {},
                                            TextInputaction: TextInputAction.next,
                                            Controller: _UsernameController,
                                            Hint_Text:  'Enter Your Username',
                                            Onchanged: (String) {},
                                            validator: MultiValidator([
                                              RequiredValidator(
                                                  errorText: "Required"),
                                            ]),
                                            IconClicked: () {},
                                            obscureText: true,
                                            isDense: false,
                                            isCollapsed: false,
                                          ),
                                        ),
                                      ),),
                                  Positioned(
                                    top: 182.h,
                                    left: 0,
                                    right: 0,
                                    child:
                                      Center(
                                        child: Container(
                                          child: textfeild(
                                            isDense: false,
                                            isCollapsed: false,
                                            verticalPaddind:10,
                                            BorderWIdth: 0.5,
                                            PrefixImage: "Assets/images/mail.svg",
                                            prefixIconClicked: () {},
                                            Want_prefixIconClicked: false,
                                            Want_Send_Icon: false,
                                            BorderType: "Outline",
                                            Font_Style: Montserrat.copyWith(
                                                fontSize: 12.sp,
                                                color: Color(0xff707070),
                                                height: 1.6.h),
                                            type: TextInputType.text,
                                            BorderRaduis: 31,
                                            BorderColor: Color(0xff707070),
                                            HintText_Style: Montserrat.copyWith(
                                              fontSize: 12.sp,
                                              color: Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                            ),

                                            textAlign: TextAlign.left,
                                            FontSize: 16,
                                            hidePass: false,
                                            FillColor:   Colors.white,
                                            width: 290,
                                            Hieght: 55,

                                            MaxLines: 1,

                                            FoucesNode: FocusNode(),
                                            Onsubmitted: (String) {},
                                            TextInputaction: TextInputAction.next,
                                            Controller: _EmailController,
                                            Hint_Text:  'Enter Your Email',
                                            Onchanged: (String) {},
                                            validator: MultiValidator([
                                              RequiredValidator(
                                                  errorText: "Required"),
                                            ]),
                                            IconClicked: () {},
                                            obscureText: true,
                                          ),
                                        ),
                                      ),),
                                  Positioned(
                                    top: 241.h,
                                    left: 0,
                                    right: 0,
                                    child:
                                      Center(
                                        child: Container(
                                          child: textfeild(
                                            isDense: false,
                                            isCollapsed: false,
                                            verticalPaddind:10,
                                            BorderWIdth: 0.5,
                                            PrefixImage: "Assets/images/mail.svg",
                                            prefixIconClicked: () {},
                                            Want_prefixIconClicked: false,
                                            Want_Send_Icon: false,
                                            BorderType: "Outline",
                                            Font_Style: Montserrat.copyWith(
                                                fontSize: 12.sp,
                                                color: Color(0xff707070),
                                                height: 1.6.h),
                                            type: TextInputType.phone,
                                            BorderRaduis: 31,
                                            BorderColor: Color(0xff707070),
                                            HintText_Style: Montserrat.copyWith(
                                              fontSize: 12.sp,
                                              color: Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                            ),

                                            textAlign: TextAlign.left,
                                            FontSize: 16,
                                            hidePass: false,
                                            FillColor:   Colors.white,
                                            width: 290,
                                            Hieght: 55,

                                            MaxLines: 1,

                                            FoucesNode: FocusNode(),
                                            Onsubmitted: (String) {},
                                            TextInputaction: TextInputAction.next,
                                            Controller: _PHoneController,
                                            Hint_Text:  'Enter Your Phone Number',
                                            Onchanged: (String) {},
                                            validator: MultiValidator([
                                              RequiredValidator(
                                                  errorText: "Required"),
                                            ]),
                                            IconClicked: () {},
                                            obscureText: true,
                                          ),
                                        ),
                                      ),),
                                  Positioned(
                                    top: 300.h,
                                    left: 0,
                                    right: 0,
                                    child:
                                      Center(
                                        child: Container(
                                          child:textfeild(
                                            isDense: false,
                                            isCollapsed: false,
                                            verticalPaddind:10,
                                            BorderWIdth: 0.5,
                                            PrefixImage: "Assets/images/lock (1).svg",
                                            prefixIconClicked: () {},
                                            Want_prefixIconClicked: false,
                                            Want_Send_Icon: false,
                                            BorderType: "Outline",
                                            Font_Style: Montserrat.copyWith(
                                              fontSize: 12.sp,
                                              color: Color(0xff707070),
                                              height: 1.6.h
                                              ),
                                            type: TextInputType.text,
                                            BorderRaduis: 31,
                                            BorderColor:  Color(0xff707070),
                                            HintText_Style: Montserrat.copyWith(
                                              fontSize: 12.sp,
                                              color: Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                            ),

                                            textAlign: TextAlign.left,
                                            FontSize: 16,
                                            hidePass: false,
                                            FillColor:   Colors.white,
                                            width: 290,
                                            Hieght: 55,

                                            MaxLines: 1,

                                            FoucesNode: FocusNode(),
                                            Onsubmitted: (String) {},
                                            TextInputaction: TextInputAction.done,
                                            Controller: _pASSController,
                                            Hint_Text: "Password",
                                            Onchanged: (String) {},
                                            validator: MultiValidator([
                                              RequiredValidator(
                                                  errorText: "Required"),
                                            ]),
                                            IconClicked: () {},
                                            obscureText: false,
                                          ),
                                        ),
                                      ),),
                                  Positioned(
                                    top: 359.h,
                                    left: 0,
                                    right: 0,
                                    child:
                                      Center(
                                        child: Container(
                                          child:textfeild(
                                            isDense: false,
                                            isCollapsed: false,
                                            verticalPaddind:10,
                                            BorderWIdth: 0.5,
                                            PrefixImage: "Assets/images/lock (1).svg",
                                            prefixIconClicked: () {},
                                            Want_prefixIconClicked: false,
                                            Want_Send_Icon: false,
                                            BorderType: "Outline",
                                            Font_Style: Montserrat.copyWith(
                                                fontSize: 12.sp,
                                                color: Color(0xff707070),
                                                height: 1.6.h
                                            ),
                                            type: TextInputType.text,
                                            BorderRaduis: 31,
                                            BorderColor:  Color(0xff707070),
                                            HintText_Style: Montserrat.copyWith(
                                              fontSize: 12.sp,
                                              color: Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                            FontSize: 16,
                                            hidePass: false,
                                            FillColor:   Colors.white,
                                            width: 290,
                                            Hieght: 55,
                                            MaxLines: 1,
                                            FoucesNode: FocusNode(),
                                            Onsubmitted: (String) {},
                                            TextInputaction: TextInputAction.done,
                                            Controller: _CPassController,
                                            Hint_Text: "Confirm Password",
                                            Onchanged: (String) {},
                                            validator:(value){
                                              if (value!=_pASSController.text){
                                                return "Make sure passwords are equal";
                                              }
                                            },
                                            IconClicked: () {},
                                            obscureText: false,
                                          ),
                                        ),
                                      ),),
                                  Positioned(
                                    top: 418.h,
                                    left: 0,
                                    right: 0,
                                    child:
                                      Center(
                                        child: Container(

                                          child: CustomButton(
                                            StructuHeight: 0.4,
                                            BorderRaduis: 31,
                                            onPressed: () {

                                              if (_formkey1.currentState!.validate()){
                                                DiDitOnce = true;
                                                _SignUpbloc.add(PostSignUp((b) => b
                                                  ..Email = _EmailController.text
                                                  ..password = _pASSController.text
                                                  ..username = _UsernameController.text
                                                  ..PhoneNUmber = _PHoneController.text
                                                  ..Image = null
                                                ));
                                              }
                                              // ShowCameraChoicesForAndroid(context,
                                              //       () async {
                                              //     print('Camera');
                                              //     // File image = await pickImage(
                                              //     //     ImageSource.camera);
                                              //     // if (image.path.isNotEmpty)
                                              //       if (_formkey1.currentState!.validate()){
                                              //         DiDitOnce = true;
                                              //         _SignUpbloc.add(PostSignUp((b) => b
                                              //           ..Email = _EmailController.text
                                              //           ..password = _pASSController.text
                                              //           ..username = _UsernameController.text
                                              //           ..PhoneNUmber = _PHoneController.text
                                              //             ..Image = null
                                              //         ));
                                              //       }
                                              //   },
                                              //       () async {
                                              //     print('Upload files');
                                              //     File image = await pickImage(
                                              //         ImageSource.gallery);
                                              //     if (image.path.isNotEmpty)
                                              //       if (_formkey1.currentState!.validate()){
                                              //         DiDitOnce = true;
                                              //         _SignUpbloc.add(PostSignUp((b) => b
                                              //           ..Email = _EmailController.text
                                              //           ..password = _pASSController.text
                                              //           ..username = _UsernameController.text
                                              //           ..PhoneNUmber = _PHoneController.text
                                              //           ..Image = image
                                              //         ));
                                              //       }
                                              //   },
                                              // );

                                            },
                                            ButtonText: 'Sign Up',
                                            btnColor: Color(0xff707070),
                                            TxtColor: Colors.white,
                                            SocialName: 'Null',
                                            SocialImage: "",
                                            weight: FontWeight.bold,
                                            fontsize: 18.sp,
                                            HeigthBTN: 46,
                                            Widthbtn: 290,
                                            BorderColor: Color(0xff707070),
                                          ),),
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),


                              Container(
                                  margin: EdgeInsets.only(top: 11.h),
                                  child: ORWith_Widget(w)),
                              Container(
                                margin: EdgeInsets.only(top: 17.h),
                                child: CustomButton(
                                  StructuHeight: 0.4,
                                  BorderRaduis: 31,
                                  BorderColor: Color(0xff726dfa),
                                  onPressed: () async {
                                    signUpWithFacebook();
                                  },
                                  ButtonText: 'SignUp with Facebook',
                                  SocialImage: "Assets/images/Facebook.svg",
                                  btnColor: Color(0xff726dfa),
                                  TxtColor: Colors.white,
                                  SocialName: 'Yes',
                                  weight: FontWeight.bold,
                                  fontsize: 18.sp,
                                  HeigthBTN: 46,
                                  Widthbtn: 290,
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 15.h),
                                child: CustomButton(
                                  StructuHeight: 0.4,
                                  BorderRaduis: 31,
                                  onPressed: () async {
                                    signUPWithGoogle(context: Context);
                                  },
                                  ButtonText: 'SignUp with Google',
                                  btnColor: Colors.white,
                                  TxtColor: Color(0xff707070),
                                  SocialName: 'Yes',

                                  SocialImage: "Assets/images/google.svg",
                                  weight: FontWeight.bold,
                                  fontsize: 18.sp,
                                  HeigthBTN: 46,
                                  Widthbtn: 290,
                                  BorderColor: Colors.white,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 40.h),
                                  child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Already have an account? ',
                                            style: SegouUI.copyWith(
                                              color: Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Login',
                                            style: SegouUI.copyWith(
                                              color: Color(0xff726dfa),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),




                            ])),
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
