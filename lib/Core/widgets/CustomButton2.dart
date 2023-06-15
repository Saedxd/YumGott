import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';

class CustomButton2 extends StatefulWidget {
  const CustomButton2({Key? key,
    required this.onPressed,
    required this.btnColor,
    required this.BorderColor,
    required this.TxtColor,
    required this.SocialName,
    required this.ButtonText,
    this.SocialImage,
    this.FontFamilySocial,
    required this.fontsize,
    required this.weight,
    required this.HeigthBTN,
    required this.Widthbtn
  }) : super(key: key);

  final String ButtonText;
  final VoidCallback? onPressed;
  final Color? btnColor;
  final Color? TxtColor;
  final Color? BorderColor;
  final String? SocialName;
  final String? SocialImage;
  final String? FontFamilySocial;
  final FontWeight? weight;
  final double? fontsize;

  final double? Widthbtn;
  final double? HeigthBTN;
  @override
  State<CustomButton2> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  int ExtractNum = 0;
  int ExtractNumHeight = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onPressed!.call();
        setState(() {
          ExtractNum =widget.Widthbtn !<= 89?5: 10;
          ExtractNumHeight = 3;
        });
        Future.delayed(Duration(milliseconds: 500), () {
          setState(() {
            ExtractNum = 0;
            ExtractNumHeight = 0;
          });
        });


      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        height: widget.HeigthBTN!.h-ExtractNumHeight,
        width: widget.Widthbtn!.w -ExtractNum,
        padding: EdgeInsets.only(top: 4.h),
        decoration: BoxDecoration(
          color: widget.btnColor,
          borderRadius: BorderRadius.circular(18.0.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 15.r,
            ),
          ],
        ),
        child: Center(
          child: Text(
           widget.ButtonText,
            style: Montserrat.copyWith(
                    fontSize: widget.fontsize!.sp,
                    fontWeight: widget.weight,
                    color: widget.TxtColor,
                height: 1.1.h
            ),
            softWrap: true,
          ),
        ),
      ),
    );
  }
}
