import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';

class SettingsRow extends StatefulWidget {
   SettingsRow({Key? key,required this.text,required this.image,required this.ontap,required this.WantIcon}) : super(key: key);
String image;
String text;
VoidCallback ontap;
bool WantIcon=false;
  @override
  State<SettingsRow> createState() => _SettingsRowState();
}

class _SettingsRowState extends State<SettingsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 177.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(widget.image,color: Color(0xffFA3858),width: 25.w,),
              Container(
                margin: EdgeInsets.only(left: 20.w),
                child: Text(
                  widget.text,
                  textAlign: TextAlign.left,

                  style:Montserrat.copyWith(
                    fontSize: 13.sp,
                    color: const Color(0xff3b2d2f),
                    fontWeight: FontWeight.w500,
                  ),
                //  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ),
            ],
          ),
        ),
        widget.WantIcon?
        Container(
          margin: EdgeInsets.only(right: 35.9.w),
          child: IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed:widget.ontap, icon:SvgPicture.asset("Assets/images/Path 5.svg",width: 5.39.w,)),
        ):Container(),
      ],
    );
  }
}
