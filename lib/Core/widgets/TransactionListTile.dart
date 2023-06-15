import 'package:Yumgott/Core/widgets/CachedNetworkImagE.dart';
import 'package:Yumgott/core/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TransactionListTile extends StatefulWidget {
  TransactionListTile({Key? key}) : super(key: key);
 // TransactionsListModel Model;
  @override
  State<TransactionListTile> createState() => _TransactionListTileState();
}

class _TransactionListTileState extends State<TransactionListTile> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: 342.w,
      height: 73.h,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 14.5.w,top: 10.h),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
