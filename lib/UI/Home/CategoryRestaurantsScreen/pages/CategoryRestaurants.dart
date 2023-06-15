import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/widgets/RestaurantListTile.dart';
import 'package:Yumgott/UI/Home/CategoryRestaurantsScreen/bloc/CategoryRestaurants_Bloc.dart';
import 'package:Yumgott/UI/Home/CategoryRestaurantsScreen/bloc/CategoryRestaurants_Event.dart';
import 'package:Yumgott/UI/Home/CategoryRestaurantsScreen/bloc/CategoryRestaurants_State.dart';
import 'package:Yumgott/core/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CategoryRestaurants extends StatefulWidget {
   CategoryRestaurants({Key? key,required this.Category_ID}) : super(key: key);
int Category_ID;
  @override
  State<CategoryRestaurants> createState() => _CategoryRestaurantsState();
}

class _CategoryRestaurantsState extends State<CategoryRestaurants> {
  final pref = sl<IPrefsHelper>();
  final _CategoryRestaurantsBloc = sl<CategoryRestaurantsBloc>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _Controller = TextEditingController();
  PanelController controller = PanelController();




  @override
  void initState() {
    _CategoryRestaurantsBloc.add(GetCategoryRestaurants((b) => b..Category_ID = widget.Category_ID));
    super.initState();
  }



  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return  WillPopScope(
        onWillPop:() async => true,
        child:BlocBuilder(

        bloc: _CategoryRestaurantsBloc,
        builder: (BuildContext context, CategoryRestaurantsState state) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    width: w,
                    margin: EdgeInsets.only(top: 29.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'restaurant',
                          style:Montserrat.copyWith(
                            fontSize: 20.sp,
                            color: const Color(0xff3b2d2f),
                            fontWeight: FontWeight.w700,
                          ),
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),

                  state.success!
                      ?Expanded(
                    child: Container(
                        width: w,
                        margin: EdgeInsets.only(top: 19.h),
                        child: ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: ListView.separated(
                            physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                            scrollDirection: Axis.vertical,
                            itemCount: state.UnFilteredRestaurants!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  RestaurantListTile(state: state.UnFilteredRestaurants![index], index: index,),
                                ],
                              );
                            },
                            separatorBuilder:(BuildContext context, int index) {
                              return SizedBox(
                                height: 9.h,
                              );
                            },
                          ),
                        )),
                  )
                      : state.isLoading == true
                      ? Expanded(child: Center(child: listLoader(context: context)))
                      : Container(),
                ],
              ),
            ),
          );
        }));
  }
}
