import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/BigMealCard.dart';
import 'package:Yumgott/Core/widgets/SmallMealCard.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/MenuScreen/bloc/Menu_Bloc.dart';
import 'package:Yumgott/UI/Home/MenuScreen/bloc/Menu_Event.dart';
import 'package:Yumgott/UI/Home/MenuScreen/bloc/Menu_State.dart';
import 'package:Yumgott/UI/Home/ProductDetailsScreen/pages/ProductDetails.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

Widget MenuWidget(int Restaurant_ID,BuildContext context,PanelController controller) {
  final pref = sl<IPrefsHelper>();
  final _MenuBlocBloc = sl<MenuBloc>();
List<bool> greencards = [];
  var h = MediaQuery
      .of(context)
      .size
      .height;
  var w = MediaQuery
      .of(context)
      .size
      .width;
  return BlocBuilder(
      bloc: _MenuBlocBloc,
      builder: (BuildContext context, MenuState state) {
        return SlidingUpPanel(
            isDraggable: true,
            slideDirection: SlideDirection.UP,
            controller: controller,
            maxHeight: 725.h,
            minHeight: 10.h,
            parallaxEnabled: true,
            parallaxOffset: .5,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0.r),
                bottomRight: Radius.circular(20.0.r)),
            onPanelOpened: (){
                _MenuBlocBloc.add(ChangeSelectedTab((b) => b..index = 0));
               _MenuBlocBloc.add(GetMenu((b) => b..Restaurant_ID = Restaurant_ID));
                greencards = List.filled(100, false);
                int switchs =0;

                for(int i=0;i<10;i+=2){
                  greencards[i] = true;
                }

            },
            panel: Container(
              height: 725.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffededf1),
                    borderRadius: BorderRadius.circular(20.0.r),
                  ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 13.h),
                    child: Center(
                      child: Text(
                        'Menu',
                        style: Montserrat.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff707070),
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 21.h),
                    height: 113.h,
                    width: w,
                    child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: ListView.separated(
                          cacheExtent: 500,
                          physics: AlwaysScrollableScrollPhysics(
                              parent: BouncingScrollPhysics()),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                index == 0
                                    ? SizedBox(
                                        width: 22.w,
                                      )
                                    : Container(),
                                Container(
                                  width: 279.w,
                                  height: 113.h,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    // image: DecorationImage(
                                    //   image: const AssetImage(''),
                                    //   fit: BoxFit.cover,
                                    // ),
                                    borderRadius: BorderRadius.circular(20.0.r),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(0, 3),
                                        blurRadius: 6.r,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 7.w,
                            );
                          },
                        )),
                  ),
                  state.success!
                      ? Row(
                          children: [
                            Container(
                                width: 294.w,
                                height: 18.h,
                                margin: EdgeInsets.only(
                                    left: 39.w, right: 41.w, top: 35.h),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Color(0xff707070),
                                  width: 0.6
                                      .w, // This would be the width of the underline
                                ))),
                                child: ScrollConfiguration(
                                    behavior: MyBehavior(),
                                    child: ListView.separated(
                                      cacheExtent: 500,
                                      physics: AlwaysScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state.Tabs!.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return RemoveHighlight(InkWell(
                                          onTap: () {
                                            _MenuBlocBloc.add(ChangeSelectedTab(
                                                (b) => b..index = index));
                                          },
                                          child: Container(
                                            height: 18.h,
                                            padding: EdgeInsets.only(
                                              top: 4.h,
                                            ),
                                            decoration: BoxDecoration(
                                                //       color: Colors.red,
                                                border: Border(
                                                    bottom: BorderSide(
                                              color: state.SelectedTap![index]
                                                  ? Color(0xff0707070)
                                                  : Color(0xffEDEDF1),
                                              width: 1.2
                                                  .w, // This would be the width of the underline
                                            ))),
                                            child: Text(
                                              "${state.Tabs![index]}",
                                              style: Montserrat.copyWith(
                                                decorationColor:
                                                    Color(0xff707070),
                                                fontSize: 10.sp,
                                                color: const Color(0xff707070),
                                                fontWeight: FontWeight.w800,
                                              ),
                                              textAlign: TextAlign.center,
                                              softWrap: false,
                                            ),
                                          ),
                                        ));
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return SizedBox(
                                          width: state.Tabs!.length == 2
                                              ? 120.w
                                              : state.Tabs!.length == 3
                                                  ? 100.w
                                                  : 38.w,
                                        );
                                      },
                                    ))),
                          ],
                        )
                      : state.isLoading!
                          ? Center(child: listLoader(context: context))
                          : Container(),

                  // state.success! && state.Tabs!.isNotEmpty
                  //     ? Expanded(
                  //         child: Container(
                  //           width: w,
                  //           height: 400.h,
                  //           margin: EdgeInsets.only(
                  //               top: 16.5.h, left: 39.w, right: 39.w),
                  //           child: StaggeredGridView.countBuilder(
                  //             physics: AlwaysScrollableScrollPhysics(
                  //                 parent: BouncingScrollPhysics()),
                  //             crossAxisCount: 2,
                  //             itemCount: state
                  //                 .GetMenu!
                  //                 .categories![state.SelectedIndex!]
                  //                 .products!
                  //                 .length,
                  //             scrollDirection: Axis.vertical,
                  //             itemBuilder: (BuildContext context, int index) {
                  //               return InkWell(
                  //                   onTap: () {
                  //                     print("width $w");
                  //                     print("height $h");
                  //                     //I/flutter (16849): width 360.0 / x = 0.9
                  //                     // I/flutter (16849): height 672.0 / x = 0.8
                  //                     print("Clicked");
                  //                     PushNavigator(
                  //                         context,
                  //                         ProductDetails(
                  //                           Data: state.ProductList![
                  //                               state.SelectedIndex!][index],
                  //                         ));
                  //                   },
                  //                   child: greencards[index]
                  //                       ? BigMealCard(
                  //                           Product: state
                  //                               .GetMenu!
                  //                               .categories![state.SelectedIndex!]
                  //                               .products,
                  //                           index: index,
                  //                         )
                  //                       : SmallMealCard(
                  //                           Product: state
                  //                               .GetMenu!
                  //                               .categories![state.SelectedIndex!]
                  //                               .products,
                  //                           index: index,
                  //                         )
                  //               );
                  //             },
                  //             staggeredTileBuilder: (int index) =>
                  //                 StaggeredTile.count(
                  //                     1,
                  //                     greencards[index]
                  //                         ? 0.0013464857142857 * h
                  //                         : 0.0011954761904762 * h),
                  //             mainAxisSpacing: 5.0,
                  //             crossAxisSpacing: 4.0,
                  //           ),
                  //         ),
                  //       )
                  //     : state.isLoading!
                  //         ? Container(
                  //               width: w,
                  //               height: 400.h,
                  //   margin: EdgeInsets.only(
                  //       top: 16.5.h, left: 39.w, right: 39.w),
                  //             child:
                  //                 Center(child: listLoader(context: context)),
                  //
                  //           )
                  //         : Container(),
                ],
              ),
            ));
      });
}
