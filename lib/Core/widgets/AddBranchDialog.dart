import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

class CustomDialogBox extends StatefulWidget {
  // final String title, descriptions, text;
  // final Image img;
  //
  CustomDialogBox(this.NameController, this.State, this.Ontap,this.is_Edit);

  bool? is_Edit;
  TextEditingController? NameController;
  RestaurantMenuState? State;
  Function(int) Ontap;

  // VoidCallback? OnTap1;
  // VoidCallback? OnTap2;

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  var _formkey1 = GlobalKey<FormState>();
  final _RestaurantMenuBloc = sl<RestaurantMenuBloc>();
  List<String> Types = [
    "Meal",
    "Appetizers"
  ];
  int SelectedValue= 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return BlocBuilder(
        bloc: _RestaurantMenuBloc,
        builder: (BuildContext context, RestaurantMenuState state)
    {
      return
      Container(
        width: 317.w,
        height:widget.is_Edit!?170.h: 250.h,
        decoration: BoxDecoration(
          color: const Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(12.0.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0x69000000),
              offset: Offset(0, 2),
              blurRadius: 6.r,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 33.h),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formkey1,
                child: textfeild(
                  isDense: false,
                  isCollapsed: false,
                  verticalPaddind: 13,
                  BorderWIdth: 0.5,
                  PrefixImage: "Assets/images/mail.svg",
                  prefixIconClicked: () {},
                  Want_prefixIconClicked: false,
                  Want_Send_Icon: false,
                  BorderType: "Outline",
                  Font_Style: Montserrat.copyWith(
                      fontSize: 18.sp,
                      color: const Color(0xffaaa0a2),
                      fontWeight: FontWeight.w500,
                      height: 1.6.h),
                  type: TextInputType.text,
                  BorderRaduis: 12,
                  BorderColor: Colors.white,
                  HintText_Style: Montserrat.copyWith(
                      fontSize: 18.sp,
                      color: const Color(0xffaaa0a2),
                      fontWeight: FontWeight.w500,
                      height: 1.6.h),
                  textAlign: TextAlign.left,
                  FontSize: 16,
                  hidePass: false,
                  FillColor: Colors.white,
                  width: 265,
                  Hieght: 65,
                  MaxLines: 1,
                  FoucesNode: FocusNode(),
                  Onsubmitted: (String) {},
                  TextInputaction: TextInputAction.next,
                  Controller: widget.NameController,
                  Hint_Text: "Name",
                  Onchanged: (String) {},
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required")
                  ]),
                  IconClicked: () {},
                  obscureText: true,
                ),
              ),
            ),
            !widget.is_Edit!?
            Container(
                width: 265.w,
                height: 95.h,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(12.0.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x21000000),
                      offset: Offset(0, 3),
                      blurRadius: 6.r,
                    ),
                  ],
                ),
                child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: ListView.separated(
                      cacheExtent: 500,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: (){
                            SelectedValue = index;
                            _RestaurantMenuBloc.add(ChangeSelectedType((b) => b..index = index));
                          },
                          child: Container(
                            height: 47.h,
                            width: 265.w,
                            margin: EdgeInsets.only(top: 0.h, left: 14.w),
                            child: Center(
                              child: Text(
                                Types[index],
                                style: Montserrat.copyWith(
                                  fontSize: 18.sp,
                                  color:state.BranchtypeStatus![index]? const Color(0xff78D669):Color(0xff707070),
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 5.h,
                        );
                      },
                    ))):Container(),
            Container(
              margin: EdgeInsets.only(top: 18.h, right:widget.is_Edit!?0.w: 34.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 23.w, left:widget.is_Edit!?80.w: 140.w),
                      child: Text(
                        'Cancel',
                        style: Montserrat.copyWith(
                          fontSize: 18.sp,
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      if (_formkey1.currentState!.validate()){
                        if (!widget.is_Edit!)
                        widget.Ontap(SelectedValue);
                        Navigator.of(context).pop();
                      }



                    },
                    child: Container(
                      child: Text(
                       widget.is_Edit!?'Confirm':"Add",
                        style: Montserrat.copyWith(
                          fontSize: 18.sp,
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    );
  }
}
