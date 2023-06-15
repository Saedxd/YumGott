import 'package:Yumgott/Core/constants/strings.dart';
import 'package:Yumgott/Core/widgets/RestaurantListTile.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/RestaurantProfile/pages/RestaurantProfile.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_Bloc.dart';
import 'package:Yumgott/UI/Home/RestaurantsScreen/bloc/RestaurantsScreen_State.dart';


class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  final pref = sl<IPrefsHelper>();
  final _RestaurantsScreenBlocBloc = sl<RestaurantsScreenBloc>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _SearchController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _SearchController.dispose();
  }
  Future<void> OnRefresh() async {
    _RestaurantsScreenBlocBloc.add(GetAllRestaurants());
  }

  @override
  void initState() {
    _RestaurantsScreenBlocBloc.add(GetAllCategories());
    _RestaurantsScreenBlocBloc.add(GetAllRestaurants());
    _RestaurantsScreenBlocBloc.add(ChangeSelectedCity((b) => b..value=Cities[0]));

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _RestaurantsScreenBlocBloc,
        builder: (BuildContext context, RestaurantsScreenState state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 21.w, top: 31.4.h),
                          child:Backbuttonn((){Navigator.pop(context);},Colors.black) ),
                      Container(
                        margin: EdgeInsets.only(left: 86.w, top: 29.h),
                        child: Text(
                          'Restaurants',
                          style: Montserrat.copyWith(
                            fontSize: 20.sp,
                            color: const Color(0xff3b2d2f),
                            fontWeight: FontWeight.w700,
                          ),
                          softWrap: false,
                        ),
                      ),
                      Container(),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 38.w,top: 20.h),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 3.w),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'City',
                                      textAlign: TextAlign.left,
                                      style: SegouUI.copyWith(
                                        fontSize: 12.sp,
                                        color: const Color(0xffccc2c2),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items:

                              Cities.map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: SegouUI.copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.sp,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  )
                              )).toList(),
                              value: state.SelectedCity!.isEmpty?null:state.SelectedCity,
                              onChanged: (value) {
                                _RestaurantsScreenBlocBloc.add(ChangeSelectedCity((b) => b..value=value.toString()));
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 20.w,
                                color: Color(0xff707070),
                              ),
                              iconSize: 20.w,
                              iconEnabledColor: Colors.yellow,
                              iconDisabledColor: Colors.black,
                              buttonHeight: 40.h,
                              buttonWidth: 98.w,
                              buttonPadding:
                              EdgeInsets.only(left: 8.w, right: 8.w),
                              buttonDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                ],
                                border: Border.all(
                                  color: Color(0xffFA3858),
                                ),
                                color: Colors.white,
                              ),
                              buttonElevation: 2,
                              itemHeight: 45.h,
                              dropdownMaxHeight: 100.h,
                              dropdownWidth: 98.w,
                              dropdownDecoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: border(10, 10, 0, 0),
                              ),
                              dropdownElevation: 8,
                              scrollbarRadius: Radius.circular(40.r),
                              scrollbarThickness: 6,
                              scrollbarAlwaysShow: false,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.h),
                          child: textfeild(
                            isDense: true,
                            isCollapsed: true,
                           // topContentPadding: 25,
                            verticalPaddind:5,
                            BorderWIdth: 1,
                            PrefixImage: "Search",
                            prefixIconClicked: () {},
                            Want_prefixIconClicked: true,
                            Want_Send_Icon: false,
                            BorderType: "Outline",
                            Font_Style: Montserrat.copyWith(
                                fontSize: 12.sp,
                                color: Color(0xff707070),
                                height: 1.6.h),
                            type: TextInputType.text,
                            BorderRaduis: 10,

                            BorderColor: Color(0xffFA3858),
                            HintText_Style: Montserrat.copyWith(
                              fontSize: 14.sp,
                              color: Color(0xff707070),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                            FontSize: 16,
                            hidePass: false,
                            FillColor: Colors.white,
                            width: 203,
                            Hieght: 49,
                            MaxLines: 1,

                            FoucesNode: FocusNode(),
                            Onsubmitted: (String) {},
                            TextInputaction: TextInputAction.done,
                            Controller: _SearchController,
                            Hint_Text: "Search",
                            Onchanged: (String) {
                              _RestaurantsScreenBlocBloc.add(FilterRestaurants((b) => b..Keyword = _SearchController.text));
                            },
                            validator:(valse)=>null,
                            IconClicked: () {},
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ),

                // state.GetCategorysuccess!
                //     ?Container(
                //     width: w,
                //     height: 71.h,
                //     margin: EdgeInsets.only(top: 50.h),
                //     child: ScrollConfiguration(
                //       behavior: MyBehavior(),
                //       child: ListView.separated(
                //         cacheExtent: 500,
                //         physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                //         scrollDirection: Axis.horizontal,
                //         itemCount: 0,
                //         //state.GetCategories!.data!.length,
                //         itemBuilder: (BuildContext context, int index) {
                //           return InkWell(
                //             onTap: (){
                //               PushNavigator(context, CategoryRestaurants(Category_ID: 0,));
                //             },
                //             child: Row(
                //               children: [
                //                 index == 0
                //                     ? SizedBox(width: 33.w)
                //                     : Container(),
                //                 Column(
                //                   children: [
                //                     CachedImages(
                //                       Image: state.GetCategories!.data![index].image_path.toString(), Raduis: 26,
                //                     ),
                //                     Container(
                //                         margin: EdgeInsets.only(top: 7.h),
                //                         child: Text(
                //                           state.GetCategories!.data![index].name!
                //                           ,
                //                           style: Montserrat.copyWith(
                //                             fontSize: 10.sp,
                //                             color: const Color(0xff3b2d2f),
                //                             fontWeight: FontWeight.w500,
                //                           ),
                //                           textAlign: TextAlign.center,
                //                           softWrap: false,
                //                         ))
                //                   ],
                //                 ),
                //               ],
                //             ),
                //           );
                //         },
                //         separatorBuilder: (BuildContext context, int index) {
                //           return SizedBox(
                //             width: 13.w,
                //           );
                //         },
                //       ),
                //     ))
                //     :state.GetCategoryisloading == true
                //       ?Container(
                //         width: w,
                //         height: 71.h,
                //         margin: EdgeInsets.only(top: 19.h),child: Center(child: listLoader(context: context)))
                //       :Container(),

                  state.GetRestaurantSuccess!
                  ?Expanded(
                          child:RefreshIndicator(
                            onRefresh: OnRefresh,
                            backgroundColor: Colors.white,
                            color: Color(0xffFA3858),
                            child: Container(
                              width: w,
                              margin: EdgeInsets.only(top: 13.h),
                              child: ScrollConfiguration(
                                behavior: MyBehavior(),
                                child: ListView.separated(
                                  physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                                  scrollDirection: Axis.vertical,
                                  itemCount: state.FilteredRestaurants!.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return

                                      InkWell(
                                        onTap: (){
                                          PushNavigator(context, RestaurantProfileScreen(state.FilteredRestaurants![index].ID),(){});
                                        },
                                        child: Column(
                                        children: [
                                          RestaurantListTile(state: state.FilteredRestaurants![index], index: index,),
                                        ],
                                    )
                                      );
                                  },
                                  separatorBuilder:(BuildContext context, int index) {
                                    return SizedBox(
                                      height: 9.h,
                                    );
                                  },
                                ),
                              )),
                        ))
                  :state.GetRestaurantisLoading == true
                    ? Expanded(child: Center(child: listLoader(context: context)))
                    : Container(),
          ],
              ),
            ),
          );
        });
  }
}

