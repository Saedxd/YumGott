import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {Key? key,
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
      required this.Widthbtn,
      required this.BorderRaduis,
      required this.StructuHeight})
      : super(key: key);

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
  final double? BorderRaduis;
  final double? StructuHeight;

  final double? Widthbtn;
  final double? HeigthBTN;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  int ExtractNum = 0;
  int ExtractNumHeight = 0;
  @override
  Widget build(BuildContext context) {
    TextTheme _TextTheme = Theme.of(context).textTheme;
    ColorScheme ColorS = Theme.of(context).colorScheme;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap:(){
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
          duration: const Duration(milliseconds: 200),
          curve: Curves.bounceInOut,
          width: widget.Widthbtn!.w -ExtractNum,
          height: widget.HeigthBTN!.h -ExtractNumHeight,
          decoration: BoxDecoration(
            border: Border.all(color: widget.BorderColor!, width: 0.5.w),
            borderRadius: border(widget.BorderRaduis!, widget.BorderRaduis!,
                widget.BorderRaduis!, widget.BorderRaduis!),
            color: widget.btnColor,
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 2.h),
            child: Row(
              mainAxisAlignment: widget.SocialName == "Yes"
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                widget.SocialName == "Yes"
                    ? Container(
                        margin: EdgeInsets.only(left: 24.w),
                        width: 26.w,
                        height: 26.h,
                        child: SvgPicture.asset(
                          widget.SocialImage!,
                        ),
                      )
                    : Container(),
                widget.SocialName == "Yes"
                    ? ButtonText()
                    : Flexible(
                        fit: FlexFit.loose,
                        child: ButtonText(),
                      ),

                widget.SocialName == "Right"
                    ? SvgPicture.asset(
                        "Assets/images/location.svg",
                        color: Colors.white,
                        width: 18.w,
                      )
                    : Container()
              ],
            ),
          )),
    );
  }

  Container ButtonText() {
    return Container(
      margin: EdgeInsets.only(
          left: widget.SocialName == "Yes" ? 16.w : 0.w,
          top: widget.SocialName == "nulls" ? 1.h : 5.h),
      child: Center(
        child: Text(
          widget.ButtonText,
          strutStyle: StrutStyle(height: widget.StructuHeight!.h),
          textAlign: TextAlign.center,
          style: SegouUI.copyWith(
              fontSize: widget.fontsize,
              fontWeight: widget.weight,
              color: widget.TxtColor),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          softWrap: true,
        ),
      ),
    );
  }
}
