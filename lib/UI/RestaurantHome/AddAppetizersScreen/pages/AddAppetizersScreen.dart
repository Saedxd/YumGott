import 'dart:ffi';

import 'package:Yumgott/Core/Classes/Common_Import/Common_Import.dart';
import 'package:Yumgott/Core/Functions/Widgets.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/Core/widgets/CustomButton2.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/bloc/AddAppetizers_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/bloc/AddAppetizers_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/bloc/AddAppetizers_State.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiselect/multiselect.dart';



class AddAppetizers extends StatefulWidget {
  const AddAppetizers({Key? key}) : super(key: key);

  @override
  State<AddAppetizers> createState() => _AddAppetizersState();
}

BuildContext? context3;
class _AddAppetizersState extends State<AddAppetizers> {
  final pref = sl<IPrefsHelper>();
  final _AddAppetizersBloc = sl<AddAppetizersBloc>();
  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _InfoController = TextEditingController();
  final TextEditingController _PriceController = TextEditingController();
  ScrollController Controlerr = ScrollController();
  int Category_id=0;
  var _formkey1 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  _AddAppetizersBloc.add(GetAppetizers());
  }


  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return
      BlocBuilder(
          bloc: _AddAppetizersBloc,
          builder: (BuildContext context, AddAppetizersState state){
            context3 = context;
            return
              Scaffold(
                backgroundColor: Color(0xffF5F5F5),
                body: SafeArea(
                  child: Stack(
                    children: [
                      Container(
                        width: w,
                        height: h,
                        color: Color(0xffF5F5F5),
                        margin: EdgeInsets.only(top: 90.h),
                        child:  SingleChildScrollView(
                          controller: Controlerr,
                          physics: AlwaysScrollableScrollPhysics(),
                          child:Form(
                            autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                            key: _formkey1,
                            child: Column(
                              children: [
                                Container(
                                  //color: Colors.red,
                                  width:  292.08.w,
                                  height: 75.h,
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center, // Align vertically
                                    textAlign:TextAlign.left,
                                    maxLines:1,
                                    keyboardAppearance: Brightness.dark,
                                    textInputAction:TextInputAction.next,
                                    controller:_NameController,
                                    cursorHeight: 15.h,
                                    onChanged:(value){},
                                    onFieldSubmitted:(value){},
                                    validator:MultiValidator([RequiredValidator(errorText: "Required"),]),
                                    cursorColor: Colors.grey,
                                    inputFormatters: [],
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    style: Montserrat.copyWith(
                                      fontSize: 15.sp,
                                      color: const Color(0xff3b2d2f),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      // helperText: "",
                                      // counterText:  "",
                                        label: Text("Name",style: Montserrat.copyWith(
                                          fontSize: 18.sp,
                                          color: const Color(0xff766769),
                                          fontWeight: FontWeight.w500,
                                        )
                                        ),
                                        labelStyle: SegouUI.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        contentPadding:EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h)
                                    ),
                                    keyboardType:TextInputType.text ,
                                    obscureText: false,
                                  ),
                                ),
                                Container(
                                  //color: Colors.red,
                                  width:  292.08.w,
                                  height: 75.h,
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center, // Align vertically
                                    textAlign:TextAlign.left,
                                    maxLines:1,
                                    keyboardAppearance: Brightness.dark,
                                    textInputAction:TextInputAction.next,
                                    controller:_InfoController,
                                    cursorHeight: 15.h,
                                    onChanged:(value){},
                                    onFieldSubmitted:(value){},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                    ]),
                                    cursorColor: Colors.grey,
                                    inputFormatters: [],
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    style: Montserrat.copyWith(
                                      fontSize: 15.sp,
                                      color: const Color(0xff3b2d2f),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      // helperText: "",
                                      // counterText:  "",
                                        label: Text("Info",style: Montserrat.copyWith(
                                          fontSize: 18.sp,
                                          color: const Color(0xff766769),
                                          fontWeight: FontWeight.w500,)
                                        ),
                                        labelStyle: SegouUI.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        contentPadding:EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h)
                                    ),
                                    keyboardType:TextInputType.text ,
                                    obscureText: false,
                                  ),
                                ),
                                Container(
                                  //color: Colors.red,
                                  width:  292.08.w,
                                  height: 75.h,
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center, // Align vertically
                                    textAlign:TextAlign.left,
                                    maxLines:1,
                                    keyboardAppearance: Brightness.dark,
                                    textInputAction:TextInputAction.next,
                                    controller:_PriceController,
                                    cursorHeight: 15.h,
                                    onChanged:(value){},
                                    onFieldSubmitted:(value){},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                    ]),
                                    cursorColor: Colors.grey,
                                    inputFormatters: [],
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    style: Montserrat.copyWith(
                                      fontSize: 15.sp,
                                      color: const Color(0xff3b2d2f),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      // helperText: "",
                                      // counterText:  "",
                                        suffixIcon: Container(
                                            margin: EdgeInsets.only(top: 30.h,left: 38.w),
                                            child: Text(
                                              '\$',
                                              style: Montserrat.copyWith(
                                                fontSize: 15.sp,
                                                color: const Color(0xff3b2d2f),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              softWrap: false,
                                            )),
                                        label: Text("Price",style: Montserrat.copyWith(
                                          fontSize: 18.sp,
                                          color: const Color(0xff766769),
                                          fontWeight: FontWeight.w500,
                                        )
                                        ),
                                        labelStyle: SegouUI.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        contentPadding:EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h)
                                    ),
                                    keyboardType:TextInputType.text ,
                                    obscureText: false,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 18.h),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2(
                                      isExpanded: true,
                                      onMenuStateChange: (value){
                                        // Controlerr.animateTo(
                                        //     Controlerr.position.maxScrollExtent,
                                        //   duration: Duration(milliseconds: 700),
                                        //   curve: Curves.easeIn,
                                        // );
                                      },
                                      hint: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Branch',
                                              textAlign: TextAlign.left,
                                              style: Montserrat.copyWith(
                                                fontSize: 18.sp,
                                                color: const Color(0xff766769),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items:
                                      state.AllAppetizersCategories!.map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child:Text(
                                            item,
                                            style: Montserrat.copyWith(
                                              fontSize: 18.sp,
                                              color: const Color(0xff766769),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            softWrap: false,
                                          )
                                      )).toList(),
                                      value: state.Selected_AppetizerCategory!.isEmpty?null:state.Selected_AppetizerCategory!,
                                      onChanged:(value){
                                        _AddAppetizersBloc.add(ChangeSelectedAppetizerCategory((b) =>b..Value = value.toString()));
                                        for(int i=0;i<state.GetAppetizers!.data!.length;i++){
                                          if (state.GetAppetizers!.data![i].name==value){
                                           Category_id = state.GetAppetizers!.data![i].id!;
                                            print(Category_id);
                                           }
                                          }
                                        },
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        size: 20.w,
                                        color: Color(0xff707070),
                                      ),
                                      iconSize: 20.w,
                                      iconEnabledColor: Colors.yellow,
                                      iconDisabledColor: Colors.black,
                                      buttonHeight: 43.h,
                                      buttonWidth: 304.w,
                                      buttonPadding:  EdgeInsets.only(left: 26.5.w, right: 4.w),
                                      buttonDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12.0.r),
                                          topRight:  Radius.circular(12.0.r),
                                          bottomLeft:  Radius.circular(12.0.r),
                                          bottomRight:  Radius.circular(12.0.r),
                                        ),
                                        border: Border.all(
                                          color: Color(0xffffffff),
                                        ),
                                        color:  Color(0xffffffff),
                                      ),
                                      buttonElevation: 2,
                                      itemHeight: 32.8.h,
                                      dropdownMaxHeight: 224.h,
                                      dropdownWidth: 304.w,
                                      dropdownDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12.0.r),
                                          topRight:  Radius.circular(12.0.r),
                                          bottomLeft:  Radius.circular(12.0.r),
                                          bottomRight:  Radius.circular(12.0.r),
                                        ),
                                        border: Border.all(
                                          color: Color(0xffffffff),
                                        ),
                                        color:  Color(0xffffffff),
                                      ),
                                      dropdownElevation: 8,
                                      scrollbarRadius: Radius.circular(8.0.r),
                                      scrollbarThickness: 6,
                                      scrollbarAlwaysShow: false,
                                    ),
                                  ),
                                ),
                                // Container(
                                //   margin: EdgeInsets.only(top: 25.h),
                                //   child: CustomButton(
                                //     StructuHeight: 0.4,
                                //     BorderRaduis: 31,
                                //     onPressed:(){
                                //       Platform.isIOS
                                //           ?   ShowCameraChoicesForIos(
                                 //           context,
                                //       () async {
                                //         try {
                                //           print('Camera');
                                //           File image = await pickImage(
                                //               ImageSource.camera);
                                //           if (image.path.isNotEmpty)
                                //             _AddAppetizersBloc.add(ChangeSelectedImage((b) => b..Value = image));
                                //         } catch (e) {
                                //           print(e);
                                //         }
                                //       },
                                //       () async {
                                //       try {
                                //       print('Camera');
                                //       print('Upload files');
                                //       File image = await pickImage(
                                //       ImageSource.gallery);
                                //       if (image.path.isNotEmpty)
                                //         _AddAppetizersBloc.add(ChangeSelectedImage((b) => b..Value = image));
                                //       } catch (e) {
                                //       print(e);
                                //       }
                                //       },
                                //       )
                                //           : ShowCameraChoicesForAndroid(
                                //         context,
                                //             () async {
                                //           try {
                                //             print('Camera');
                                //             File image = await pickImage(
                                //                 ImageSource.camera);
                                //             if (image.path.isNotEmpty)
                                //               _AddAppetizersBloc.add(ChangeSelectedImage((b) => b..Value = image));
                                //           } catch (e) {
                                //             print(e);
                                //           }
                                //         },
                                //             () async {
                                //           try {
                                //             print('Camera');
                                //             print('Upload files');
                                //             File image = await pickImage(
                                //                 ImageSource.gallery);
                                //             if (image.path.isNotEmpty)
                                //               _AddAppetizersBloc.add(ChangeSelectedImage((b) => b..Value = image));
                                //           } catch (e) {
                                //             print(e);
                                //           }
                                //         },
                                //       );
                                //     },
                                //     ButtonText: 'Add Photo',
                                //     btnColor: Color(0xffFA3858),
                                //     TxtColor: Colors.white,
                                //     SocialName: 'Null',
                                //     SocialImage: "",
                                //     weight: FontWeight.bold,
                                //     fontsize: 18.sp,
                                //     HeigthBTN: 30,
                                //     Widthbtn: 301,
                                //     BorderColor: Color(0xffFA3858),
                                //   ),
                                // ),
                                Container(
                                    margin: EdgeInsets.only(left: 36.7.w,right: 45.7.w,top: 36.7.h,bottom: 14.2.h),
                                    child: Divider(thickness: 1,color: Color(0xff707070),)),
                                Container(
                                  margin: EdgeInsets.only(left: 33.w,right: 46.w,bottom: 50.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomButton2(
                                        onPressed:(){},
                                        ButtonText: 'Draft',
                                        btnColor: Colors.white,
                                        TxtColor: Color(0xffFA3858),
                                        SocialName: 'Null',
                                        SocialImage: "",
                                        weight: FontWeight.bold,
                                        fontsize: 18.sp,
                                        HeigthBTN: 40,
                                        Widthbtn: 133,
                                        BorderColor: Colors.white,
                                      ),
                                      CustomButton2(
                                        onPressed:(){
                                          if (Category_id!=0 && _formkey1.currentState!.validate())
                                          _AddAppetizersBloc.add(CreateAppetizer((b) => b
                                          ..price = double.parse(_PriceController.text)
                                              ..appetizer_id = Category_id
                                              ..info = _InfoController.text
                                              ..name = _NameController.text
                                          ));

                                        },
                                        ButtonText: 'Add',
                                        btnColor: Color(0xffFA3858),
                                        TxtColor: Colors.white,
                                        SocialName: 'Null',
                                        SocialImage: "",
                                        weight: FontWeight.bold,
                                        fontsize: 18.sp,
                                        HeigthBTN: 40,
                                        Widthbtn: 133,
                                        BorderColor: Color(0xffFA3858),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 33.w,right: 46.w,top: 10.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomButton2(
                                        onPressed:(){
                                          _NameController.clear();
                                          _PriceController.clear();
                                          _InfoController.clear();
                                        },
                                        ButtonText: 'Clear',
                                        btnColor: Colors.white,
                                        TxtColor: Color(0xffFA3858),
                                        SocialName: 'Null',
                                        SocialImage: "",
                                        weight: FontWeight.bold,
                                        fontsize: 18.sp,
                                        HeigthBTN: 40,
                                        Widthbtn: 250,
                                        BorderColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),),
                      SafeArea(
                        child: Column(
                          children: [
                            Container(
                                margin:EdgeInsets.only( top: 31.h, left: 21.w),
                                child:Backbuttonn((){Navigator.pop(context);},
                                    Colors.black
                                )),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Container(
                          width: w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 35.h,),
                                child:Text(
                                  'Add Appetizer',
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
                        ),
                      ),
                    ],
                  ),
                ),
              );
          }
      );



  }
}

