// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';


class textfeild extends StatefulWidget {
  String Hint_Text;
  // final formkey1;
  final TextInputAction TextInputaction;
  final Function(String) Onchanged;
  final Function() IconClicked;
  final Function() prefixIconClicked;
  final Function(String) Onsubmitted;
  final FocusNode FoucesNode;
  String PrefixImage='';
  TextEditingController? Controller;
  String? Function(String?)?  validator;
  List<TextInputFormatter>? inputFormatters;
  bool Want_Send_Icon = false;
  bool Want_prefixIconClicked = false;
  TextStyle HintText_Style;
  TextStyle Font_Style;
  int Hieght;
  int width;
  double? FontSize;
  final Color FillColor;
  final Color BorderColor;
  bool hidePass = false;
  int MaxLines = 0;
  int BorderRaduis = 0;
  double? topContentPadding = 0;
  double? LeftContentPadding = 0;
  double? BottomContentPadding = 0;
  double verticalPaddind = 0;
  double BorderWIdth = 0;
  bool obscureText = false;
  bool isCollapsed = false;
  bool isDense = false;
  TextAlign? textAlign;
  TextInputType? type;
  String BorderType = "";
  textfeild({
    required this.PrefixImage,
    required this.isCollapsed,
    required this.isDense,
    required this.verticalPaddind,
     this.BottomContentPadding,
    required this.BorderWIdth,
    required this.FillColor,
    required this.prefixIconClicked,
    required this.Want_prefixIconClicked,
     required this.Want_Send_Icon,
    required this.BorderType,
    required this.Font_Style,
    required this.type,
    required this.BorderRaduis,
    required this.BorderColor,
    required this.HintText_Style,
     this.LeftContentPadding,
    required this.textAlign,
    required this.obscureText,
    required this.FontSize,
    required this.hidePass,
    required this.width,
    required this.validator,
    required this.Controller,
    required this.Hint_Text,
    required this.Onchanged,
    required this.IconClicked,
    required this.Onsubmitted,
    required this.TextInputaction,
    required this.FoucesNode,
    this.inputFormatters,
    required this.Hieght,
    required this.MaxLines,
     this.topContentPadding,
  });

  @override
  _State createState() => _State();
}

class _State extends State<textfeild> {

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    TextTheme _TextTheme = Theme.of(context).textTheme;
    return Container(
      //color: Colors.red,
      width:  widget.width.w,
      height:  widget.Hieght.h,

      child: TextFormField(
        textAlignVertical: TextAlignVertical.center, // Align vertically
        textAlign:widget.textAlign!,
        maxLines: widget.MaxLines,
        keyboardAppearance: Brightness.dark,
        textInputAction: widget.TextInputaction,
        controller: widget.Controller,
        cursorHeight: 24.h,
        onChanged: widget.Onchanged,
        onFieldSubmitted: widget.Onsubmitted,
        validator: widget.validator,
        cursorColor: Colors.grey,
        inputFormatters: widget.inputFormatters,
        autovalidateMode: AutovalidateMode.onUserInteraction,


        style: widget.Font_Style,
        decoration: InputDecoration(
          label: Text(widget.Hint_Text,style: widget.HintText_Style,),
           labelStyle: widget.HintText_Style,
           isCollapsed: widget.isCollapsed,
            isDense: widget.isDense,
            helperText: ' ',
            helperStyle: const TextStyle(fontSize: 0.01),
            errorStyle: const TextStyle(fontSize: 0.01),
            errorBorder:OutlineBorderWidget(Colors.red,widget.BorderRaduis.r,widget.BorderWIdth),
            focusedErrorBorder:OutlineBorderWidget(Colors.red,widget.BorderRaduis.r,widget.BorderWIdth),
           border:OutlineBorderWidget( widget.BorderColor,widget.BorderRaduis.r,widget.BorderWIdth),
           counterText: ' ',
           enabledBorder:OutlineBorderWidget( widget.BorderColor,widget.BorderRaduis.r,widget.BorderWIdth),
            focusedBorder:   OutlineBorderWidget( widget.BorderColor,widget.BorderRaduis.r,widget.BorderWIdth),

          suffixIcon:
              widget.Want_Send_Icon
                  ?  IconButton(
                icon: SvgPicture.asset( "Assets/images/send-4008.svg",  width: 18.w,
                  height: 18.h,),
                onPressed:widget.IconClicked,
                color: Colors.black,
              )
                  : widget.hidePass ?  IconButton(
                icon: Icon(
                  widget.obscureText
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed:widget.IconClicked,
              ) :null,

            prefixIcon:widget.Want_prefixIconClicked? IconButton(
              onPressed:widget.prefixIconClicked,
              icon: widget.PrefixImage =="Assets/images/mail.svg"?
                Icon(Icons.mail_outlined,color: Colors.white,)
              : widget.PrefixImage =="Search"
                  ?Icon(Icons.search_rounded,color: Color(0xff707070),size: 17.w,)
              :Icon(Icons.lock_outlined,color: Colors.white,)
          ,):null,
            filled: true,
            fillColor: widget.FillColor,
       contentPadding:
       EdgeInsets.only(
            top: 10.h,
           left: 24.w
         ),
          //EdgeInsets.symmetric(horizontal: 0.w,vertical: 0.h),
          //   widget.topContentPadding==null?
          //   EdgeInsets.symmetric(horizontal: 24.w, vertical:widget.verticalPaddind.h,)
          //  : EdgeInsets.only(bottom: widget.Hieght / 2),
          // //
          // EdgeInsets.only(
          //       left: widget.LeftContentPadding.w,
          //       top: widget.topContentPadding.h,
          //     bottom: widget.BottomContentPadding.h,
          //   ),
          //   hintText: widget.Hint_Text,
          //   hintStyle: widget.HintText_Style
        ),
        keyboardType: widget.type,
        obscureText: !widget.obscureText,
      ),
    );
  }
}
