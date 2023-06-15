import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/Core/widgets/RestaurantOrderCard.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_Bloc.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_Event.dart';
import 'package:Yumgott/UI/Home/Order/bloc/OrderScreen_State.dart';


class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final pref = sl<IPrefsHelper>();
  final _OrderScreenBloc = sl<OrderScreenBloc>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery
        .of(context)
        .size
        .height;
    var w = MediaQuery
        .of(context)
        .size
        .width;
    return BlocBuilder(
        bloc: _OrderScreenBloc,
        builder: (BuildContext context, OrderScreenState state) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 21.w, top: 31.h),
                      child:Backbuttonn((){Navigator.pop(context);},Colors.black) ),
                  Column(
                    children: [
                      Row(
                        children: [
                             Container(
                              width: w,
                               margin: EdgeInsets.only( top: 31.h),
                            child: Center(
                              child: Text(
                                'Cart',
                                style: Montserrat.copyWith(
                                  fontSize: 20.sp,
                                  color: const Color(0xff3b2d2f),
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 600.h,
                        width: w,
                        child:ScrollConfiguration(
                            behavior: MyBehavior(),
                            child: ListView.separated(
                              cacheExtent: 500,
                              physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                              scrollDirection: Axis.vertical,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {

                                return
                                  Column(
                                    children: [
                                      index==0?SizedBox(height: 20.h,):Container(),
                                      RestaurantOrderCard(
                                        Checkbox1Status: state.Checkbox1Status!,
                                        Checkbox2Status:state.Checkbox2Status!,
                                        Dining_in: (){
                                          _OrderScreenBloc.add(ChangeCheckBox1Status());
                                        },
                                        Pick_up: (){
                                          _OrderScreenBloc.add(ChangeCheckBox2Status());
                                        },
                                        Toggle_Dining_ins:(value){
                                          _OrderScreenBloc.add(ChangeCheckBox1Status());
                                        },
                                        Toggle_Pick_ups: (value){
                                          _OrderScreenBloc.add(ChangeCheckBox2Status());
                                        },
                                      ),
                                    ],
                                  );
                              }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 36.h,); },
                            )
                        )
                        ,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.2.h,bottom: 20.h),
                        child: CustomButton(
                            StructuHeight: 0.4,
                            BorderRaduis: 31,
                            onPressed: () {},
                            btnColor: Color(0xff3B2D2F),
                            BorderColor: Color(0xff3B2D2F),
                            TxtColor: Colors.white,
                            SocialName: "null",
                            ButtonText: 'Pay',
                            fontsize: 20,
                            weight: FontWeight.w700,
                            HeigthBTN: 33,
                            Widthbtn: 289),
                      ),
                    ],
                  ),
                ],
              )
            ),
          );
        });
  }
}
