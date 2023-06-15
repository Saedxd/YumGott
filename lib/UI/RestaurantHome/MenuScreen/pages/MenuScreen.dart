import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Widgets.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/AddBranchDialog.dart';
import 'package:Yumgott/Core/widgets/AppetizerListTile.dart';
import 'package:Yumgott/Core/widgets/RestMenuListTile.dart';
import 'package:Yumgott/UI/RestaurantHome/AddAppetizersScreen/pages/AddAppetizersScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/AddProductScreen/pages/AddProductScreen.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Injection.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantMenuScreen extends StatefulWidget {
  const RestaurantMenuScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantMenuScreen> createState() => _RestaurantMenuScreenState();
}

BuildContext? context2;

class _RestaurantMenuScreenState extends State<RestaurantMenuScreen> {
  final _RestaurantMenuBloc = sl<RestaurantMenuBloc>();
  final TextEditingController Controller = TextEditingController();
  int SelectedIndex = 0;
  int SelectId = 0;
  Offset? OFFSET;

  Offset getTapPosition(TapDownDetails tapPosition) {
    final RenderBox referenceBox = context.findRenderObject() as RenderBox;
    return referenceBox.globalToLocal(
        tapPosition.globalPosition); // store the tap positon in offset variable
  }

  Future<void> OnRefresh() async {
    _RestaurantMenuBloc.add(GetMenu());
  }

  @override
  void initState() {
    _RestaurantMenuBloc.add(GetMenu());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _RestaurantMenuBloc,
        builder: (BuildContext context, RestaurantMenuState state) {
          context2 = context;
          return Scaffold(
              body: SafeArea(
                  child: Stack(children: [
            Container(
              width: w,
              height: h,
              child: Column(
                children: [
                  Container(
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15.h, right: 20.w),
                          child: PopupMenuButton<int>(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0.r))),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            icon: SvgPicture.asset(
                              "Assets/images/plus (2).svg",
                              width: 34.w,
                              height: 34.h,
                            ),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                height: 28.h,
                                value: 1,
                                // row with 2 children
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Add a branch',
                                        style: Montserrat.copyWith(
                                          fontSize: 11.sp,
                                          color: const Color(0xff3b2d2f),
                                          fontWeight: FontWeight.w600,
                                        ),
                                        softWrap: false,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              PopupMenuDivider(
                                height: 2.h,
                              ),
                              PopupMenuItem(
                                value: 2,
                                height: 32.h,
                                enabled: state.MenuTileList!.length!=0,
                                // row with 2 children
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Add a meal',
                                        style: Montserrat.copyWith(
                                          fontSize: 11.sp,
                                          color:state.MenuTileList!.length==0?Color(0xff766769): const Color(0xff3b2d2f),
                                          fontWeight: FontWeight.w600,
                                        ),
                                        softWrap: false,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              PopupMenuDivider(
                                height: 2.h,
                              ),
                              PopupMenuItem(
                                value: 3,
                                height: 28.h,
                                enabled: state.MenuTileList!.length!=0,
                                // row with 2 children
                                child:Container(
                                  child:Row(
                                    children:[
                                      Text(
                                        'Add appetizers',
                                        style: Montserrat.copyWith(
                                          fontSize: 11.sp,
                                          color: state.MenuTileList!.length==0?Color(0xff766769):const Color(0xff3b2d2f),
                                          fontWeight: FontWeight.w600,
                                        ),
                                        softWrap: false,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                            offset:Offset(-5, 55),
                            onSelected:(value){
                              if (value == 2 && state.MenuTileList!.length!=0) {
                                PushNavigator(context, AddProductScreen(),(){_RestaurantMenuBloc.add(GetMenu());});
                              } else if (value == 3 && state.MenuTileList!.length!=0) {
                                PushNavigator(context, AddAppetizers(),(){_RestaurantMenuBloc.add(GetMenu());});
                              } else if (value == 1) {

                                Controller.clear();
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialogBox(
                                        Controller,
                                        state,
                                        (value) {
                                          _RestaurantMenuBloc.add(
                                              CreateBranch((b) => b
                                                ..name = Controller.text
                                                ..is_appetizer = value));
                                        },
                                        false,
                                      );
                                    });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 31.h, left: 21.w),
                      child: Backbuttonn(() {
                        Navigator.pop(context);
                      }, Colors.black)),
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
                      margin: EdgeInsets.only(
                        top: 35.h,
                      ),
                      child:Text(
                        'Menu',
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
            SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 107.h),
                width: w,
                height: 700.h,
                child: RefreshIndicator(
                  onRefresh: OnRefresh,
                  backgroundColor: Colors.white,
                  color: Color(0xffFA3858),
                  child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            state.success!
                                ? state.MenuTileList!.length != 0
                                    ? Container(
                                        width: w,
                                        height: 653.h,
                                        child: RefreshIndicator(
                                          onRefresh: OnRefresh,
                                          backgroundColor: Colors.white,
                                          color: Color(0xffFA3858),
                                          child: ListView.separated(
                                            cacheExtent: 500,
                                            physics:
                                                AlwaysScrollableScrollPhysics(
                                                    parent:
                                                        BouncingScrollPhysics()),
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                state.MenuTileList!.length,
                                            itemBuilder: (BuildContext context,
                                                int index2) {
                                              return Column(
                                                children: [
                                                  MenuTile(state, index2, context),
                                                ],
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context,
                                                    int index) {
                                              return SizedBox(
                                                height: 6.h,
                                              );
                                            },
                                          ),
                                        ))
                                    : Container(
                                        width: w,
                                        height: 570.h,
                                        margin: EdgeInsets.only(top: 275.h),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 300.w,
                                              child: Center(
                                                child: Text(
                                                  "Your Menu is Empty, Add to your menu, through clicking the plus sign above",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                : state.isLoading == true
                                    ? Container(
                                        width: w,
                                        height: 570.h,
                                        margin: EdgeInsets.only(top: 275.h),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [

                                              Center(
                                                  child: listLoader(
                                                      context: context))
                                            ]))
                                    : Container(
                                        height: 570.h,
                                        width: w,
                                        margin: EdgeInsets.only(top: 275.h),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Container(
                                                  width: 300.w,
                                                  child: Text(
                                                    "Something Went Wrong, Please check your internet connection and try again",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                    textAlign: TextAlign.center,
                                                  )),
                                            )
                                          ],
                                        ),
                                      )
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ])));
        });
  }


  AnimatedContainer MenuTile(RestaurantMenuState state, int index2, BuildContext context) {
    return AnimatedContainer(
                                                    duration: Duration(milliseconds: 100),
                                                    width: 304.w,
                                                    height: 57.h +
                                                        (state.MenuTileStatus![index2]
                                                            ? state.MenuTileList![index2].Length!
                                                                        .h *
                                                                    51 +
                                                                13.6 +
                                                                12
                                                            : 0.h),
                                                    decoration: BoxDecoration(
                                                      color:state.MenuTileList![index2].Type =="1"
                                                          ? Color(0xffFA3858)
                                                          : Color(0xffffffff),
                                                      borderRadius: BorderRadius.circular(12.0.r),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.092),
                                                          offset:
                                                              Offset(0, 2),
                                                          blurRadius: 2.r,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Stack(children: [
                                                      Column(children: [
                                                        GestureDetector(
                                                          onTapDown:(offset) {
                                                            OFFSET = getTapPosition(offset);
                                                          },
                                                          onTap:(){
                                                            _RestaurantMenuBloc.add(SwitchApperanceStatus( (b) => b ..Index = index2));
                                                          },
                                                          onLongPress: (){
                                                            OFFSET != null
                                                                ? showPopupMenu(
                                                                    index2 +1,

                                                                    OFFSET!,
                                                                    context,
                                                                    () {
                                                                    Controller.text = state
                                                                        .MenuTileList![
                                                                            index2]
                                                                        .name
                                                                        .toString();
                                                                    WidgetsBinding.instance.addPostFrameCallback((_) =>
                                                                        showDialog(
                                                                            context: context,
                                                                            builder: (BuildContext context) {
                                                                              return CustomDialogBox(
                                                                                Controller,
                                                                                state,
                                                                                (value) {},
                                                                                true,
                                                                              );
                                                                            }).then((value) {
                                                                          if (Controller.text.isNotEmpty) {
                                                                            _RestaurantMenuBloc.add(UpdateBranch((b) => b
                                                                              ..index = index2
                                                                              ..name = Controller.text.toString()
                                                                              ..ID = state.MenuTileList![index2].ID));
                                                                          }
                                                                        }));
                                                                  }, () {
                                                                    WidgetsBinding.instance.addPostFrameCallback((_) =>
                                                                        showAlertDialog(
                                                                            context,
                                                                            () {
                                                                          Navigator.pop(context);
                                                                        }, () {
                                                                          _RestaurantMenuBloc.add(DeleteBranch((b) => b
                                                                            ..index = index2
                                                                            ..ID = state.MenuTileList![index2].ID));
                                                                          Navigator.pop(context);
                                                                        }));
                                                                  })
                                                                : print("hello");


                                                          },
                                                          child: Center(
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 10
                                                                          .h,
                                                                      left: 23
                                                                          .w),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      width: 230.96.w,
                                                                      margin: EdgeInsets.only(top:7.h),
                                                                      child:
                                                                          Text(
                                                                        state
                                                                            .MenuTileList![index2]
                                                                            .name
                                                                            .toString(),
                                                                        style:
                                                                            Montserrat.copyWith(
                                                                          fontSize:
                                                                              18.sp,
                                                                          color: state.MenuTileList![index2].Type == "1"
                                                                              ? Colors.white
                                                                              : const Color(0xff3b2d2f),
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                        ),
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        softWrap:
                                                                            true,
                                                                        maxLines:
                                                                            1,
                                                                      )),
                                                                  Container(
                                                                    //      color: Colors.red,
                                                                    width:
                                                                        25.w,
                                                                    height:
                                                                        20.82
                                                                            .h,
                                                                    margin: EdgeInsets.only(
                                                                        top: 10
                                                                            .h),
                                                                    child:
                                                                        IconButton(
                                                                      padding:
                                                                          EdgeInsets.zero,
                                                                      constraints:
                                                                          const BoxConstraints(),
                                                                      onPressed:
                                                                          () {
                                                                        _RestaurantMenuBloc.add(SwitchApperanceStatus((b) => b
                                                                          ..Index =
                                                                              index2));
                                                                      },
                                                                      icon:
                                                                          Icon(
                                                                        state.MenuTileStatus![index2]
                                                                            ? Icons.keyboard_arrow_down_outlined
                                                                            : Icons.arrow_back_ios_new,
                                                                        size: state.MenuTileStatus![index2]
                                                                            ? 25.w
                                                                            : 15.w,
                                                                        color: state.MenuTileList![index2].Type == "1"
                                                                            ? Colors.white
                                                                            : Color(0xff707070),
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        !state
                                                                .MenuStatusLoading!
                                                            ? state.MenuTileStatus![
                                                                    index2]
                                                                ? Container(
                                                                    margin: EdgeInsets.only(
                                                                        left: 21
                                                                            .w,
                                                                        right: 18.7
                                                                            .w,
                                                                        top: 5
                                                                            .h),
                                                                    child:
                                                                        Divider(
                                                                      color: Color(
                                                                          0xff707070),
                                                                    ))
                                                                : Container()
                                                            : Container(),

                                                        !state.MenuStatusLoading!
                                                            ? state.MenuTileStatus![index2]
                                                                ? Expanded(
                                                                    child: Container(
                                                                      width: 275.w,
                                                                      child: ScrollConfiguration(
                                                                          behavior: MyBehavior(),
                                                                          child: ListView.separated(
                                                                            cacheExtent: 500,
                                                                            physics: NeverScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                                                                            scrollDirection: Axis.vertical,
                                                                            itemCount:state.MenuTileList![index2].Length!,
                                                                            itemBuilder: (BuildContext context, int index) {
                                                                              return Container(
                                                                                margin: EdgeInsets.only(
                                                                                  top: index == 0 ? 10.6.h : 0,
                                                                                ),
                                                                                child: state.MenuTileList![index2].Type == "1" ? AppetizerListTile(Tile:  state.MenuTileList![index2], index: index,) : ProductListTile(Tile:  state.MenuTileList![index2],index: index,),
                                                                              );
                                                                            },
                                                                            separatorBuilder: (BuildContext context, int index) {
                                                                              return SizedBox(
                                                                                height: 12.h,
                                                                              );
                                                                            },
                                                                          )),
                                                                    ),
                                                                  )
                                                                : Container()
                                                            : Container(),

                                                        //
                                                        //     state.ContainerHeight!!=0?
                                                        //     Container(
                                                        //       margin: EdgeInsets.only(right: 3.w,top: 13.8.h),
                                                        //       child:
                                                        //
                                                        //     //   state.ContainerHeight!!=0?
                                                        //     //   Column(
                                                        //     //     children: [
                                                        //     //
                                                        //     //
                                                        //     //
                                                        //     //     ],
                                                        //     //   ):Container(),
                                                        //     // ):Container(),
                                                        //     //
                                                        //
                                                        //
                                                        //
                                                        //   ],
                                                        // ),
                                                      ]),
                                                    ]));
  }
}
