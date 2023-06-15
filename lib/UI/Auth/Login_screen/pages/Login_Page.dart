// ignore_for_file: non_constant_identifier_names, file_names, curly_braces_in_flow_control_structures
import 'dart:io';
import 'dart:ui';
import 'package:Yumgott/Core/DynamicLinks/Dynamic_Links.dart';
import 'package:Yumgott/UI/Auth/ForgetPassword_Screen/pages/ForgetPassword.dart';
import 'package:Yumgott/UI/Auth/Login_screen/bloc/login_bloc.dart';
import 'package:Yumgott/UI/Auth/Login_screen/bloc/login_event.dart';
import 'package:Yumgott/UI/Auth/Login_screen/bloc/login_state.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Bloc.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantHomeScreen/pages/HomePage.dart';
import 'package:Yumgott/main.dart';
import 'package:Yumgott/models/UserDataModel/DataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:firebase_messaging/firebase_messaging.dart' as F;
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
import 'package:the_apple_sign_in/the_apple_sign_in.dart';
import 'package:Yumgott/UI/Home/HomeScreen/pages/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../SignUp_Screen/pages/SignUp.dart';

//import 'package:firebase_messaging/firebase_messaging.dart' as fire;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final RegExp regExpEmail = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

class _LoginState extends State<Login> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _pASSController = TextEditingController();
  var _formkey1 = GlobalKey<FormState>();
  var _formkey2 = GlobalKey<FormState>();
  late FocusNode _EmailFocusNode;
  late FocusNode _PassFocusNode;

  final pref = sl<IPrefsHelper>();
  GoogleSignInAccount? googleSignInAccount;
  final _Loginbloc = sl<loginBloc>();
  final _ShortVidoesBloc = sl<ShortVidoesBloc>();

  AnimationController? _controller;
  GoogleSignIn? googleSignIn;
  bool Changed3 = false;
  bool islogedin = false;
  bool First_Time_Login = true;
  Animation<double>? ba;
  AnimationController? _bc;
  Listenable? listenable;
  bool Selected = false;
  bool DiDitOnce = false;
  String? token;
  var Fcmtoken;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String isoCountryCode = 'PS';
  late PhoneNumber number = PhoneNumber(isoCode: "PS");
  late Locale? deviceLocale;
  String numberr = "";


  void SignOutGOogle() {
    googleSignIn!.signOut();
  }



  Future<void> signInWithApple() async {
    String? email;
    PersonNameComponents? fullName;
    String? familyName;
    String? givenName;

    // final appleSingup = await _auth.signInWithProvider(appleProvider);
    // print(appleSingup.user);
    // final app = await SignInWithApple.getAppleIDCredential(scopes: [
    //   AppleIDAuthorizationScopes.email,
    //   AppleIDAuthorizationScopes.fullName,
    // ]);

    // print(app.authorizationCode);
    final AuthorizationResult result = await TheAppleSignIn.performRequests([
      AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
    ]);
    if (result.status == AuthorizationStatus.authorized &&
        result.credential?.fullName != null) {
      email = result.credential?.email ?? '';
      fullName = result.credential?.fullName;
      familyName = result.credential?.fullName?.familyName;
      givenName = result.credential?.fullName?.givenName;

      print('User email $email');
      print('User familyName ${fullName?.familyName}');
      print('User given name ${fullName?.givenName}');

      // _Loginbloc.add(SignInApple((b) => b
      //     ..fcmToken = Fcmtoken
      //     ..Lastname = familyName
      //     ..FirstName =givenName
      //     ..Email = email
      // ));

    } else {
      print("exception");
    }
  }

  Future<void> signInWithFacebook() async {
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

          _Loginbloc.add(SignInFacebook((b) => b
            ..AccessToken = _token
            ..fcmToken = Fcmtoken
          ));
        }
      } else {
        ShowAnimatedTopbar(context, 'Check your internet connection',
            AnimatedSnackBarType.error);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signInWithGoogle({required BuildContext context}) async {
    try {
      String? Email;
      String? PhotoUrl;
      String? Name;
      String? AccessToken;
      //googleSignIn!.signOut();
      bool result = await InternetConnectionChecker().hasConnection;
      if (result == true) {
        googleSignIn = GoogleSignIn(
          scopes: [
            'email',
            //   'https://www.googleapis.com/auth/contacts.readonly',
            "https://www.googleapis.com/auth/userinfo.profile"
          ],
        );
        // googleSignIn.signOut();
        googleSignInAccount = await googleSignIn!.signIn();

        if (googleSignInAccount != null) {
          googleSignInAccount!.authentication.then((value) {
            AccessToken = value.accessToken!;
            debugPrint("accessToken : ${value.accessToken}");
            debugPrint("idToken : ${value.idToken}");
            Email = googleSignInAccount!.email;
            PhotoUrl = googleSignInAccount!.photoUrl.toString();
            Name = googleSignInAccount!.displayName.toString();


            print(Email);
            print(PhotoUrl);
            print(Name);

            _Loginbloc.add(SigninWithGoogle((b) => b
              ..Name = Name??""
              ..image = PhotoUrl??""
              ..Email = Email??""
              ..fcmToken = Fcmtoken
            ));

          });



          DiDitOnce = true;
        }
      } else {
        ShowAnimatedTopbar(context, 'Check your internet connection',
            AnimatedSnackBarType.error);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _EmailFocusNode = FocusNode();
    _PassFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _PassFocusNode.dispose();
    _EmailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext Context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _Loginbloc,
        builder: (BuildContext context, loginState state) {


          if (DiDitOnce){
            if (state.success!){
              if (state.data!.access_token == null){
                ShowAnimatedTopbar(context,state.data!.message!,AnimatedSnackBarType.error);
                DiDitOnce = false;
              } else if (state.data!.code==200) {
            //  SaveUser(state.data!.data!, state.data!.access_token.toString());
                SetToken(state.data!.access_token.toString());
                tokens = state.data!.access_token.toString();
                ShowAnimatedTopbar(context, state.data!.message!,AnimatedSnackBarType.success);
                PushNavigator(Context, HomeScreen(),(){});
                DiDitOnce = false;
              }
            }
          }

          return WillPopScope(
            onWillPop: () async {
                 return false;
            },
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: Colors.black,
              key: _scaffoldKey,
              body:
              SafeArea(
                child: Stack(
                  children: [
                    Application_Background(w, h, 4, 4),
                    Container(
                        width: w,
                        height: h,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (){
                                  PushNavigator(context, RestaurantHomeScreen(),(){});
                                },
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10.h),
                                    width: 186.w,
                                    height: 259.h,
                                    child: SvgPicture.asset("Assets/images/LOGO.svg"),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 40.h),
                                child: Form(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  key: _formkey1,
                                  child: textfeild(
                                    isDense: true,
                                    isCollapsed: true,
                                    verticalPaddind:13,
                                    BorderWIdth: 0.5,
                                    PrefixImage: "Assets/images/mail.svg",
                                    prefixIconClicked: () {},
                                    Want_prefixIconClicked: true,
                                    Want_Send_Icon: false,
                                    BorderType: "Outline",
                                    Font_Style: SegouUI.copyWith(
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                        height: 1.6.h),
                                    type: TextInputType.text,
                                    BorderRaduis: 31,
                                    BorderColor:
                                        Colors.black.withOpacity(0.005),
                                    HintText_Style: SegouUI.copyWith(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left,
                                    FontSize: 16,
                                    hidePass: false,
                                    FillColor: Colors.black.withOpacity(0.5),
                                    width: 290,
                                    Hieght: 55,
                                    MaxLines: 1,
                                    FoucesNode: _EmailFocusNode,
                                    Onsubmitted: (String) {},
                                    TextInputaction: TextInputAction.next,
                                    Controller: _EmailController,
                                    Hint_Text: "Email",
                                    Onchanged: (String) {},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                      EmailValidator(
                                          errorText: "That's not an Email"),
                                    ]),
                                    IconClicked: () {},
                                    obscureText: true,
                                  ),
                                ),
                              ),
                              Container(
                                child: Form(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  key: _formkey2,
                                  child: textfeild(
                                    isDense: true,
                                    isCollapsed: true,
                                    verticalPaddind:13,
                                    BorderWIdth: 0.5,
                                    PrefixImage: "Assets/images/lock (1).svg",
                                    prefixIconClicked: () {},
                                    Want_prefixIconClicked: true,
                                    Want_Send_Icon: false,
                                    BorderType: "Outline",
                                    Font_Style: SegouUI.copyWith(
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                        height: 1.6.h
                                    ),
                                    type: TextInputType.text,
                                    BorderRaduis: 31,
                                    BorderColor: Colors.black.withOpacity(0.005),
                                    HintText_Style: SegouUI.copyWith(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left,
                                    FontSize: 16,
                                    hidePass: false,
                                    FillColor: Colors.black.withOpacity(0.5),
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
                                      RequiredValidator(errorText: "Required"),
                                    ]),
                                    IconClicked: () {},
                                    obscureText: false,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () async{

                                       await DynamicLinksProvider().CreateLink("Reels", "123" ).then((value)async {
                                          print("value: ${value}");
                                          // _onShareWithResult(
                                          //     Context,
                                          //     value);
                                          await launch(value);
                                        });

                                     //   PushNavigator(context, ForgotPassword());
                                      },
                                      child: Container(
                                        height: 10.h,
                                        margin: EdgeInsets.only(right: 42.w),
                                        child: Text(
                                          'Forget password?',
                                          style: SegouUI.copyWith(
                                            fontSize: 9.sp,
                                            color: const Color(0xffffffff),
                                          ),
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 34.h),
                                child: CustomButton(
                                  StructuHeight: 0.4,
                                  BorderRaduis: 31,
                                  onPressed: () {
                            //        PushNavigator(context, HomeScreen());
                                    if (_formkey2.currentState!.validate() && _formkey1.currentState!.validate()){
                                      DiDitOnce = true;
                                      _Loginbloc.add(PostLOgin((b) => b
                                        ..password = _pASSController.text
                                        ..Email = _EmailController.text
                                        ..fcmToken = Fcmtoken
                                      ));
                                    }
                                  },
                                  ButtonText: 'Sign in',
                                  btnColor: Color(0xffFA3858),
                                  TxtColor: Colors.white,
                                  SocialName: 'Null',
                                  SocialImage: "",
                                  weight: FontWeight.bold,
                                  fontsize: 18.sp,
                                  HeigthBTN: 46,
                                  Widthbtn: 290,
                                  BorderColor: Color(0xffFA3858),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 48.h),
                                  child: ORWith_Widget(w)),
                              Container(
                                margin: EdgeInsets.only(top: 20.h),
                                child: CustomButton(
                                  StructuHeight: 0.4,
                                  BorderRaduis: 31,
                                  BorderColor: Color(0xff726dfa),
                                  onPressed: () async {
                                    signInWithFacebook();
                                  },
                                  ButtonText: 'Login with Facebook',
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
                                    signInWithGoogle(context: Context);
                                  },
                                  ButtonText: 'Login with Google',
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
                                  PushNavigator(context, SignUp(),(){});
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 55.h),
                                  child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Don’t have an account yet? ',
                                            style: SegouUI.copyWith(
                                              color: Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Register',
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
