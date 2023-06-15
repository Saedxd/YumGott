import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/Core/widgets/TransactionListTile.dart';
import 'package:Yumgott/UI/Home/TransactionsScreen/bloc/Transactions_Bloc.dart';
import 'package:Yumgott/UI/Home/TransactionsScreen/bloc/Transactions_Event.dart';
import 'package:Yumgott/UI/Home/TransactionsScreen/bloc/Transactions_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Injection.dart';

import 'package:built_collection/built_collection.dart';
import 'package:share_plus/share_plus.dart';


class TransactionsScreen extends StatefulWidget {
  TransactionsScreen();

  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}


class _TransactionsScreenState extends State<TransactionsScreen>
    with SingleTickerProviderStateMixin {

  final _TransactionBloc = sl<TransactionBloc>();
  Future<void> OnRefresh() async {
    _TransactionBloc.add(GetTransactions());
  }

  @override
  void initState() {
    _TransactionBloc.add(GetTransactions());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var s = MediaQuery.of(context).size;
    return BlocBuilder(
        bloc: _TransactionBloc,
        builder: (BuildContext Context, TransactionState state) {
          return Scaffold(
            backgroundColor: Color(0xffEDEDF1),
            body: SafeArea(
                child: Stack(
                  children:[

                    Container(
                      margin: EdgeInsets.only(left: 126.w,top: 34.h),
                      child:Text(
                        'Transactions',
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
                          //
                          // state.success!
                          //     ?Expanded(
                          //     child:RefreshIndicator(
                          //       onRefresh: OnRefresh,
                          //       backgroundColor: Colors.white,
                          //       color: Color(0xffFA3858),
                          //       child: Container(
                          //           width: w,
                          //           margin: EdgeInsets.only(top: 13.h),
                          //           child: ScrollConfiguration(
                          //             behavior: MyBehavior(),
                          //             child: ListView.separated(
                          //               physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                          //               scrollDirection: Axis.vertical,
                          //               itemCount: state.GetallTranscations!.data!.length,
                          //               itemBuilder: (BuildContext context, int index) {
                          //                 return
                          //
                          //                   InkWell(
                          //                       onTap:(){},
                          //                       child: Column(
                          //                         children: [
                          //                           TransactionListTile(Model: state.GetallTranscations!.data![index],),
                          //                         ],
                          //                       )
                          //                   );
                          //               },
                          //               separatorBuilder:(BuildContext context, int index) {
                          //                 return SizedBox(
                          //                   height: 9.h,
                          //                 );
                          //               },
                          //             ),
                          //           )),
                          //     ))
                          //     :state.isLoading!
                          //     ? Expanded(child: Center(child: listLoader(context: context)))
                          //     : Container(),


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
