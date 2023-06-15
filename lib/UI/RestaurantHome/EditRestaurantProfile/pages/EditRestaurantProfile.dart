import 'dart:io';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:Yumgott/App/app.dart';

import 'package:Yumgott/Core/Functions/Widgets.dart';
import 'package:Yumgott/Core/constants/strings.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/Avatar.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/pages/AddAppetizersScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/AddProductScreen/pages/AddProductScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/EditRestaurantProfile/bloc/EditRestaurantProfile_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/EditRestaurantProfile/bloc/EditRestaurantProfile_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/EditRestaurantProfile/bloc/EditRestaurantProfile_State.dart';
import 'package:Yumgott/UI/RestaurantHome/MapScreen/pages/MapScreen.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class EditRestaurantProfile extends StatefulWidget {
  const EditRestaurantProfile({Key? key}) : super(key: key);

  @override
  State<EditRestaurantProfile> createState() => _EditRestaurantProfileState();
}

class _EditRestaurantProfileState extends State<EditRestaurantProfile> {
  final _EditRestaurantProfileBloc = sl<EditRestaurantProfileBloc>();
  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _InfoController = TextEditingController();
  final TextEditingController _PriceController = TextEditingController();
  ScrollController Controlerr = ScrollController();
  var _formkey1 = GlobalKey<FormState>();
  final pref = sl<IPrefsHelper>();

  @override
  void initState() {
    GetUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _EditRestaurantProfileBloc,
        builder: (BuildContext context, EditRestaurantProfileState state) {
          return Scaffold(
            body: SafeArea(
              top: false,
              child: Stack(
                children:[
                  Container(
                    width: w,
                    height: 220.h,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child:  Container(
                            height: 172.h,
                            width: w,
                              child:

                                 state.Cover_PhotoFile!=null
                                   ? Image.file(
                                   state.Cover_PhotoFile!,
                                   height: 172.h,
                                   width: w,
                                   fit: BoxFit.fill,
                                 )
                                   :Image.asset(
                                 "Assets/images/cover.png",
                                 fit: BoxFit.fill,
                                   height: 172.h,
                                   width: w,
                             )
                          ),
                        ),

                        Positioned(
                            top: 160.h,
                            right: 24.w,
                            child: CircleAvatar(
                              backgroundColor: Color(0xff707070),
                              radius: 11.5.r,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                onPressed: () async {
                                  Platform.isIOS
                                      ? ShowCameraChoicesForIos(
                                          context,
                                          () async {
                                            print('Camera');
                                            File image = await pickImage(
                                                ImageSource.camera);
                                            if (image.path.isNotEmpty)
                                            _EditRestaurantProfileBloc.add(ChangeCoverImage((b) =>b..Value =image ));

                                          },
                                          () async {
                                            print('Upload files');
                                            File image = await pickImage(
                                                ImageSource.gallery);
                                            if (image.path.isNotEmpty)
                                            _EditRestaurantProfileBloc.add(ChangeCoverImage((b) =>b..Value =image ));

                                          },
                                        )
                                      : ShowCameraChoicesForAndroid(
                                          context,
                                          () async {
                                            print('Camera');
                                            File image = await pickImage(
                                                ImageSource.camera);
                                            if (image.path.isNotEmpty)
                                            _EditRestaurantProfileBloc.add(ChangeCoverImage((b) =>b..Value =image ));

                                          },
                                          () async {
                                            print('Upload files');
                                            File image = await pickImage(
                                                ImageSource.gallery);
                                            if (image.path.isNotEmpty)
                                            _EditRestaurantProfileBloc.add(ChangeCoverImage((b) =>b..Value =image ));

                                          },
                                        );
                                },
                                icon: Icon(
                                  Icons.edit,
                                  size: 11.w,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        Positioned(
                            top: 120.h,
                            left: 0,
                            right: 0,
                            child: Container(
                              child: CircleAvatar(
                                  radius: 45.r,
                                  backgroundColor: Color(0XFF707070),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // widget.Sucess!?
                                      // CachedImages(Raduis: 40.5,Image: widget.Image,)
                                      //     :
                                   Center(
                                    child: CircleAvatar(
                                          radius: 40.5.r,
                                          backgroundColor: Colors.grey,
                                          child:    state.Profile_PhotoFile!=null
                                              ?
                                          ClipOval(
                                              child:
                                              Image.file(
                                              state.Profile_PhotoFile!,  fit: BoxFit.fill,
                                                width: 81.w,
                                          ))
                                              :Container()
                                        ),
                                  )
                                    ],
                                  )),
                            )),

                        Positioned(
                          top: 185.h,
                          left: 204.w,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xff707070),
                                radius: 11.5.r,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {
                                    Platform.isIOS
                                        ?
                                    ShowCameraChoicesForIos(
                                            context,
                                            () async {
                                              try {
                                                print('Camera');
                                                File image = await pickImage( ImageSource.camera);
                                                if (image.path.isNotEmpty)
                                                _EditRestaurantProfileBloc.add(ChangeProfileImage((b) =>b..Value =image ));

                                              } catch (e) {
                                                print(e);
                                              }
                                            },
                                            () async {
                                              try {
                                                print('Camera');
                                                print('Upload files');
                                                File image = await pickImage(
                                                    ImageSource.gallery);
                                                if (image.path.isNotEmpty)
                                                _EditRestaurantProfileBloc.add(ChangeProfileImage((b) =>b..Value =image ));

                                              } catch (e) {
                                                print(e);
                                              }
                                            },
                                          )

                                        : ShowCameraChoicesForAndroid(
                                            context,
                                          () async {
                                        try {
                                          print('Camera');
                                          File image = await pickImage(
                                              ImageSource.camera);
                                          if (image.path.isNotEmpty)
                                          _EditRestaurantProfileBloc.add(ChangeProfileImage((b) =>b..Value =image ));

                                        } catch (e) {
                                          print(e);
                                        }
                                      },
                                          () async {
                                        try {
                                          print('Camera');
                                          print('Upload files');
                                          File image = await pickImage(
                                              ImageSource.gallery);
                                          if (image.path.isNotEmpty)
                                          _EditRestaurantProfileBloc.add(ChangeProfileImage((b) =>b..Value =image ));

                                        } catch (e) {
                                          print(e);
                                        }
                                      },
                                          );
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    size: 11.w,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: 235.h),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formkey1,
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child:  SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                        child: Column(
                          children: [
                            Container(
                              //color: Colors.red,
                              color: Colors.transparent,
                              width: 292.08.w,
                              height: 75.h,
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                // Align vertically
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                keyboardAppearance: Brightness.dark,
                                textInputAction: TextInputAction.next,
                                controller: _NameController,
                                cursorHeight: 15.h,
                                onChanged: (value) {},
                                onFieldSubmitted: (value) {},
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "Required"),
                                ]),
                                cursorColor: Colors.grey,
                                inputFormatters: [],
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: Montserrat.copyWith(
                                  fontSize: 15.sp,
                                  color: const Color(0xff3b2d2f),
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                    // helperText: "",
                                    // counterText:  "",
                                    label: Text("Name",
                                        style: Montserrat.copyWith(
                                          fontSize: 18.sp,
                                          color: const Color(0xff766769),
                                          fontWeight: FontWeight.w500,
                                        )),
                                    labelStyle: SegouUI.copyWith(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 10.h)),
                                keyboardType: TextInputType.text,
                                obscureText: false,
                              ),
                            ),
                            Container(
                              //color: Colors.red,
                              width: 292.08.w,
                              height: 75.h,
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                // Align vertically
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                keyboardAppearance: Brightness.dark,
                                textInputAction: TextInputAction.next,
                                controller: _InfoController,
                                cursorHeight: 15.h,
                                onChanged: (value) {},
                                onFieldSubmitted: (value) {},
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "Required"),
                                ]),
                                cursorColor: Colors.grey,
                                inputFormatters: [],
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: Montserrat.copyWith(
                                  fontSize: 15.sp,
                                  color: const Color(0xff3b2d2f),
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                    // helperText: "",
                                    // counterText:  "",
                                    label: Text("Description",
                                        style: Montserrat.copyWith(
                                          fontSize: 18.sp,
                                          color: const Color(0xff766769),
                                          fontWeight: FontWeight.w500,
                                        )),
                                    labelStyle: SegouUI.copyWith(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 10.h)),
                                keyboardType: TextInputType.text,
                                obscureText: false,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                              //  SelectTimeForAndroid(context);
                                SelectTimeForIOS(context);

                              },
                              child: Container(
                                width: w,
                                margin: EdgeInsets.only(left: 41.w, top: 15.h),
                                child: Text(
                                  'Worktime',
                                  style: Montserrat.copyWith(
                                    fontSize: 18.sp,
                                    color: const Color(0xff766769),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Container(
                              width: w,
                              height: 230.h,
                              margin: EdgeInsets.only(
                                  left: 44.w, top: 8.h, right: 56.w),
                              child: ScrollConfiguration(
                                  behavior: MyBehavior(),
                                  child: ListView.separated(
                                    cacheExtent: 500,
                                    physics: NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    itemCount: DaysOF_The_week.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            DaysOF_The_week[index],
                                            style: Montserrat.copyWith(
                                              fontSize: 15.sp,
                                              color: const Color(0xff766769),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            softWrap: false,
                                          ),
                                          Theme(
                                            data: ThemeData(
                                              unselectedWidgetColor:
                                                  Color(0xff707070),
                                            ),
                                            child: SizedBox(
                                                height: 24.0.h,
                                                width: 24.0.w,
                                                child: Checkbox(
                                                    activeColor:
                                                        Color(0xff707070),
                                                    checkColor: Colors.black,
                                                    fillColor:
                                                        MaterialStateProperty
                                                            .resolveWith(
                                                                (states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .disabled)) {
                                                        return Color(
                                                            0xff707070);
                                                      }
                                                      return Color(0xff707070);
                                                    }),
                                                    value: state
                                                            .CheckBoxStatusesList![
                                                        index],
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            2.0.r),
                                                        bottom: Radius.circular(
                                                            2.0.r),
                                                      ),
                                                    ),
                                                    onChanged: (value) {
                                                      print(value);
                                                      _EditRestaurantProfileBloc
                                                          .add(SwitchCheckBoxes(
                                                              (b) => b
                                                                ..index =
                                                                    index));
                                                    })),
                                          ),
                                        ],
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return SizedBox(
                                        height: 5.h,
                                      );
                                    },
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20.h),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: ()async{
                                      String? StartTime= '';
                                      StartTime =

                                     // Platform.isIOS ?
                                       await SelectTimeForIOS(context);
                                      // : await SelectTimeForAndroid(context);

                                      _EditRestaurantProfileBloc.add(ChangeStartTime((b) => b..Value = StartTime));


                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 62.w),
                                      width: 129.w,
                                      height: 42.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1.0, color: const Color(0xff707070)),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(left: 10.w,top: 13.h),
                                                  child: Icon(Icons.access_time_sharp,color: Color(0xff707070),size: 16.w,)),
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 9.w,top: 8.h),
                                            child: Column(children: [
                                              Container(
                                                width: 84.w,
                                                child: Text(
                                                  'Open',
                                                  style:Montserrat.copyWith(
                                                    fontSize: 7.sp,
                                                    color: const Color(0xff766769),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  softWrap: false,
                                                ),
                                              ),
                                              Container(
                                                width: 84.w,
                                                margin: EdgeInsets.only(top: 4.h),
                                                child: Text(
                                                  state.StartTime!,
                                                  style: Montserrat.copyWith(
                                                    fontSize: 13.sp,
                                                    color: const Color(0xff766769),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  softWrap: false,
                                                ),
                                              )
                                            ],),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: ()async{
                                      String? CloseTime= '';
                                      CloseTime =

                                      Platform.isIOS ?
                                      await SelectTimeForIOS(context)
                                          : await SelectTimeForAndroid(context);

                                      _EditRestaurantProfileBloc.add(ChangeEndTime((b) => b..Value = CloseTime));

                                    },
                                    child:
                                  Container(
                                    margin: EdgeInsets.only(left: 13.w),
                                    width: 129.w,
                                    height: 42.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0, color: const Color(0xff707070)),
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(left: 10.w,top: 13.h),
                                                child: Icon(Icons.access_time_sharp,color: Color(0xff707070),size: 16.w,)),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 9.w,top: 8.h),
                                          child: Column(children: [
                                            Container(
                                              width: 84.w,
                                              child: Text(
                                                'Close',
                                                style:Montserrat.copyWith(
                                                  fontSize: 7.sp,
                                                  color: const Color(0xff766769),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                softWrap: false,
                                              ),
                                            ),
                                            Container(
                                              width: 84.w,
                                              margin: EdgeInsets.only(top: 4.h),
                                              child: Text(
                                               state.EndTime!,
                                                style: Montserrat.copyWith(
                                                  fontSize: 13.sp,
                                                  color: const Color(0xff766769),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                softWrap: false,
                                              ),
                                            )
                                          ],),
                                        )
                                      ],
                                    ),
                                  ),),
                                ],
                              ),
                            ),
                            Container(
                              width: w,
                              margin: EdgeInsets.only(
                                  left: 41.w, right: 47.w, top: 20.h,bottom: 80.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      'Location',
                                      style: Montserrat.copyWith(
                                        fontSize: 18.sp,
                                        color: const Color(0xff766769),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      softWrap: false,
                                    ),
                                  ),
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    onPressed: () {
                                      PushNavigator(
                                          context,
                                          MapScreen(
                                            AddMarker: () {},
                                          ),(){});
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      size: 17.w,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),)
                    ),
                  ),
                  Positioned(
                    bottom: 30.h,
                    left: 0,
                    right: 0,
                    child: Container(
                    child: Center(
                      child: CustomButton(
                        StructuHeight: 0.4,
                        BorderRaduis: 31,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        ButtonText: 'Save',
                        btnColor: Color(0xffFA3858),
                        TxtColor: Colors.white,
                        SocialName: 'Null',
                        SocialImage: "",
                        weight: FontWeight.bold,
                        fontsize: 18.sp,
                        HeigthBTN: 40,
                        Widthbtn: 297,
                        BorderColor: Color(0xffFA3858),
                      ),
                    ),
                  ),)
                ],
              ),
            ),
          );
        });
  }
}
