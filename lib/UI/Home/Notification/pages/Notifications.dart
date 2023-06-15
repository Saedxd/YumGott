
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/widgets/NotificationsListTile.dart';
import 'package:Yumgott/Core/widgets/RestaurantListTile.dart';
import 'package:Yumgott/UI/Home/Notification/bloc/Notifications_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/Notification/bloc/Notifications_Bloc.dart';
import 'package:Yumgott/UI/Home/Notification/bloc/Notifications_State.dart';
import 'package:Yumgott/core/theme/theme_constants.dart';


class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final pref = sl<IPrefsHelper>();
  final _NotificationsBloc = sl<NotificationsBloc>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _NotificationsBloc.add(GetNotifications());
  }

  Future<void> OnRefresh() async {
    _NotificationsBloc.add(GetNotifications());
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _NotificationsBloc,
        builder: (BuildContext context, NotificationsState state) {
          return Scaffold(
            backgroundColor: Color(0xffEDEDF1),
            body: SafeArea(
                  bottom: false,
                  child: Stack(
                children:[

                  Container(
                    margin: EdgeInsets.only(left: 126.w,top: 34.h),
                    child:Text(
                      'Notifications',
                      style:Montserrat.copyWith(
                        fontSize: 20.sp,
                        color: const Color(0xff3b2d2f),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),




                  Container(
                    margin: EdgeInsets.only(top: 99.h),
                    child: Column(
                      children: [

                        state.success!
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
                                      itemCount: state.Notificationss!.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return

                                          InkWell(
                                              onTap:(){},
                                              child: Column(
                                                children: [
                                                  NotificationListTile(state: state.Notificationss![index],),
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
                            :state.isLoading!
                            ? Expanded(child: Center(child: listLoader(context: context)))
                            : Container(),


                      ],
                    ),
                  ),
                ],
              )

            ),
          );
        });
  }
}
