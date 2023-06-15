import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:Yumgott/UI/Auth/NewPassword_Screen/bloc/NewPassword_State.dart';
import 'package:Yumgott/UI/Auth/NewPassword_Screen/bloc/NewPassword_bloc.dart';
import 'package:Yumgott/UI/Auth/NewPassword_Screen/bloc/NewPassword_event.dart';
import 'package:form_field_validator/form_field_validator.dart';


class NewPassword_Screen extends StatefulWidget {
   NewPassword_Screen({Key? key,required this.email}) : super(key: key);
  String email ='';
  @override
  State<NewPassword_Screen> createState() => _NewPassword_ScreenState();
}


class _NewPassword_ScreenState extends State<NewPassword_Screen> {
  final NewPassword_Bloc = sl<NewPasswordBloc>();
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();
  late FocusNode FoucesNodePass;
  late FocusNode FoucesNodeConfirm;
  final TextEditingController _PassController = TextEditingController();
  final TextEditingController _CPassController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final AtleastOneUperCase = RegExp("(?=.*[A-Z])");
  final containAtleastOneLowercase = RegExp("(?=.*[a-z])");
  final shouldContainAtleastOneDigit = RegExp("(?=.*?[0-9])");
  final least8CharactersInLength = RegExp(".{8,}");
  bool diditonce = false;

  @override
  void initState() {
    super.initState();
    FoucesNodePass = FocusNode();
    FoucesNodeConfirm = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: NewPassword_Bloc,
        builder: (BuildContext context, NewPasswordState state)
    {

      //
      // if(state.success! && diditonce){
      //   if (state.ResetPassword!.error==null){
      //     ShowAnimatedTopbar(context, state.ResetPassword!.message.toString(), AnimatedSnackBarType.success);
      //     PushAndRemoveUtil(context,Login());
      //   }else{
      //     ShowAnimatedTopbar(context, state.ResetPassword!.error.toString(), AnimatedSnackBarType.error);
      //
      //   }
      //
      //   diditonce = false;
      // }
      return Scaffold(
          resizeToAvoidBottomInset: false,
          key: _scaffoldKey,
          backgroundColor: Colors.white,
          body: SafeArea(
              child:
              Stack(children: [

                Container(
                    width: w,
                    height: h,
                    child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 120.h),
                            child: Text('New Password'
                                ,
                                textAlign: TextAlign.left,
                                style: Montserrat.copyWith(
                                    color: Color(0xff2B2B2B),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 1.h
                                )),
                          ),
                          Container(
                            width: 300.w,
                            margin: EdgeInsets.only(top: 56.h),
                            child: Text('Enter new password and confirm.',
                                textAlign: TextAlign.center,
                                style: Montserrat.copyWith(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4.h
                                )),
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
                                PrefixImage: "Assets/images/lock (1).svg",
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
                                FoucesNode: FocusNode(),
                                Onsubmitted: (String) {},
                                TextInputaction: TextInputAction.next,
                                Controller: _PassController,
                                Hint_Text: "Old Password",
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
                                FoucesNode: FocusNode(),
                                Onsubmitted: (String) {},
                                TextInputaction: TextInputAction.done,
                                Controller: _CPassController,
                                Hint_Text: "New Password",
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
                            margin: EdgeInsets.only(top: 34.h),
                            child: CustomButton(
                              StructuHeight: 0.4,
                              BorderRaduis: 31,
                              onPressed: () {
                                // //        PushNavigator(context, HomeScreen());
                                // if (_formkey2.currentState!.validate() && _formkey1.currentState!.validate()){
                                //   DiDitOnce = true;
                                //   _Loginbloc.add(PostLOgin((b) => b
                                //     ..password = _pASSController.text
                                //     ..Email = _EmailController.text
                                //     ..fcmToken = Fcmtoken
                                //   ));
                                // }
                              },
                              ButtonText: 'Done',
                              btnColor: Color(0xffFA3858),
                              TxtColor: Colors.white,
                              SocialName: 'Null',
                              SocialImage: "",
                              weight: FontWeight.bold,
                              fontsize: 15.sp,
                              HeigthBTN: 46,
                              Widthbtn: 290,
                              BorderColor: Color(0xffFA3858),
                            ),
                          ),


                        ]
                    )
                ),
                state.isLoading == true
                    ? Center(child: listLoader(context: context))
                    : Container(),
              ]
              )
          )
      );
    }
    );


  }

}
