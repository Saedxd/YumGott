
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/constants/strings.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';

import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/LocationVidoesScreen/bloc/LocationVidoes_Bloc.dart';
import 'package:Yumgott/UI/Home/LocationVidoesScreen/bloc/LocationVidoes_State.dart';
import 'package:Yumgott/UI/Home/Notification/pages/Notifications.dart';
import 'package:Yumgott/UI/Home/Order/pages/OrderScreen.dart';
import 'package:Yumgott/UI/Home/ShortVideos/pages/ShortVideos.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';

class LocationVidoesScreen extends StatefulWidget {
  const LocationVidoesScreen({Key? key}) : super(key: key);

  @override
  State<LocationVidoesScreen> createState() => _LocationVidoesScreenState();
}

class _LocationVidoesScreenState extends State<LocationVidoesScreen> {
  final pref = sl<IPrefsHelper>();
  final _LocationVidoesBlocBloc = sl<LocationVidoesBloc>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return BlocBuilder(
        bloc: _LocationVidoesBlocBloc,
        builder: (BuildContext context, LocationVidoesState state) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [

                 Row(
                   children: [
                     Container(
                         margin: EdgeInsets.only(top: 37.h,left: 22.w),
                         child: Backbuttonn((){Navigator.pop(context);},Colors.black)
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 93.9.w,top: 33.h),
                       child: CustomButton(
                         StructuHeight: 1.35,
                           BorderRaduis: 6,
                           onPressed: (){},
                           btnColor:Color(0xffFA3858),
                           BorderColor: Color(0xffFA3858),
                           TxtColor: const Color(0xffffffff),
                           SocialName: "Right",
                           ButtonText:
                           'Madrid..'
                           'Madrid..'
                           'Madrid..'
                           'Madrid..'
                           ,
                           fontsize: 16,
                           weight: FontWeight.w700,
                           HeigthBTN: 29,
                           Widthbtn: 116
                       ),
                     ),
                   ],
                 ),

                  Expanded(
                    child: Container(
                   width: w,
                      margin: EdgeInsets.only(left: 17.w,right: 17.w,top: 19.h),
                      child: StaggeredGridView.countBuilder(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        itemCount: 10,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return
                            Container(
                              height: 196.h,

                              decoration: BoxDecoration(
                                color: Colors.red,
                                // image: DecorationImage(
                                //   image: const AssetImage(''),
                                //   fit: BoxFit.cover,
                                // ),
                                borderRadius: BorderRadius.circular(5.0.r),
                              ),
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right:6.w ,bottom: 4.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          child: Text(
                                            '856',
                                            style: SegouUI.copyWith(
                                              fontSize: 9.sp,
                                              color: const Color(0xffffffff),
                                              fontWeight: FontWeight.w600,
                                            ),
                                            softWrap: false,
                                          ),
                                        ),
                                        Icon(Icons.remove_red_eye_outlined,color: Colors.white,size: 15.w,),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                        },
                        staggeredTileBuilder: (int index) => StaggeredTile.count((index +1) % 5 ==0 ?2:1,  (index +1) % 5 ==0 ? 1.4 : 1.4),
                        mainAxisSpacing: 3.0,
                        crossAxisSpacing: 4.0,
                      ),
                    ),

                  )

                ],
              ),
            ),

          );
        });
  }
}
