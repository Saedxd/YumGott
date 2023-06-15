import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/constants/strings.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Auth/ForgetPassword_Screen/bloc/ForgotPassword_bloc.dart';
import 'package:Yumgott/UI/Auth/ForgetPassword_Screen/bloc/ForgotPassword_event.dart';
import 'package:Yumgott/UI/Auth/ForgetPassword_Screen/bloc/ForgotPassword_state.dart';

import '../../Verification_Screen/pages/Verification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late FocusNode _EmailFocusNode;
  final TextEditingController _EmailController = TextEditingController();
  var _formkey1 = GlobalKey<FormState>();
  final _ForgotPassBloc = sl<ForgotPasswordBloc>();
  bool diditonce = false;
  @override
  void initState() {
    _EmailFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _ForgotPassBloc,
        builder: (BuildContext context, ForgotPasswordState state) {
          if (state.success! && diditonce) {
            if (true) {
              // ShowAnimatedTopbar(context, state.ResetPassword!.error!,
              //     AnimatedSnackBarType.error);
            } else {
              PushNavigator(context,Verification(_EmailController.text),(){});


              // ShowAnimatedTopbar(context, state.ResetPassword!.message!,
              //     AnimatedSnackBarType.info);
            }
            diditonce = false;
           }
          return Scaffold(
            body: SafeArea(
              child: Stack(children: [

                Container(
                  width: w,
                  height: h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 120.h),
                        child: Text('Forgot Password',
                            textAlign: TextAlign.left,
                            style: Montserrat.copyWith(
                                color: Color(0xff2B2B2B),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                height: 1.h)),
                      ),
                      Container(
                        width: 300.w,
                        margin: EdgeInsets.only(top: 56.h),
                        child: Text(
                            'Enter your registered Email Address to receive a code',
                            textAlign: TextAlign.center,
                            style: Montserrat.copyWith(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                height: 1.4.h)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24.h),
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                              EmailValidator(errorText: "That's not an Email"),
                            ]),
                            IconClicked: () {},
                            obscureText: true,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.h),
                        child: CustomButton(
                          StructuHeight: 0.4,
                          BorderRaduis: 31,
                          onPressed: () {
                            diditonce = true;
                             // //        PushNavigator(context, HomeScreen());
                            // if (_formkey2.currentState!.validate() && _formkey1.currentState!.validate()){
                            //   DiDitOnce = true;
                            //   _Loginbloc.add(PostLOgin((b) => b
                            //     ..password = _pASSController.text
                            //     ..Email = _EmailController.text
                            //     ..fcmToken = Fcmtoken
                            //   ));
                            // }
                            _ForgotPassBloc.add(RequestPassReset((b) => b..Email =_EmailController.text ));
                          },
                          ButtonText: 'Submit',
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
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 30.h),
                          child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Back to ',
                                      style: Montserrat.copyWith(
                                        color: DarkColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.sp,
                                      )),
                                  TextSpan(
                                    text: 'Login',
                                    style: Montserrat.copyWith(
                                      color: Color(0xff015595),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                state.isLoading == true
                    ? Positioned(
                    top: h / 2,
                    left: 0,
                    right: 0,
                    child: Center(child: listLoader(context: context)))
                    : Container(),
              ])
            ),
          );
        });
  }
}
