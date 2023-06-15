import 'dart:ffi';
import 'dart:io';

import 'package:Yumgott/Core/Classes/Common_Import/Common_Import.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

Future<void> ShowCameraChoicesForIos(
    BuildContext context,
    VoidCallback ONtap1,
    VoidCallback Ontap2  ){

  var w = MediaQuery.of(context).size.width;
  return showCupertinoModalPopup(
      context: context,
      builder: (BuildContext cont) {
        return CupertinoActionSheet(
          actions: [
            CupertinoActionSheetAction(
              onPressed: ONtap1,
              child:
              Container(
                width: w,
                height: 50.h,
                child: Center(child: Text("Use Camera",
                  style: Montserrat.copyWith(
                    fontSize: 19.sp,
                    color: const Color(0xffFA3858),
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: Ontap2,
              child:Container(
                width: w,
                height: 50.h,
                child: Center(child: Text("Use Libary",
                  style: Montserrat.copyWith(
                    fontSize: 19.sp,
                    color: const Color(0xffFA3858),
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(cont).pop;
            },
            child: Text('Cancel',    style: Montserrat.copyWith(
              fontSize: 19.sp,
              color:Colors.red,
              fontWeight: FontWeight.w600,
            ),),
          ),
        );
      });


}
Future<void> ShowCameraChoicesForAndroid(
    BuildContext context,
    VoidCallback ONtap1,
    VoidCallback Ontap2
    ){
  var h = MediaQuery.of(context).size.height;
  var w = MediaQuery.of(context).size.width;
  return   showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0.r),
            topLeft: Radius.circular(20.0.r),
          )
      ),
      builder: (BuildContext bc){
        return Container(
          height: 200.h,
          width: w,
          child: Column(
            children: [


              InkWell(
                onTap: ONtap1,
                child: Container(
                  width: w,
                  height: 100.h,
                  child: Center(child: Text("Use Camera",
                    style: Montserrat.copyWith(
                      fontSize: 19.sp,
                      color: const Color(0xffFA3858),
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ),
              ),
              Divider(height: 2.h,color: Colors.black,),
          InkWell(
            onTap: Ontap2,
            child:
            Container(
                width: w,
                height: 90.h,
                child: Center(child: Text("Use Libary",
                  style: Montserrat.copyWith(
                    fontSize: 19.sp,
                    color: const Color(0xffFA3858),
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
          )

            ],
          ),
        );
      }
  );


}

TimeOfDay time = TimeOfDay(hour: 7, minute: 15);


Future<String> SelectTimeForAndroid(BuildContext context) async {
  try {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: time,
    );

    // print();
   print("${newTime!.format(context)}");

    return newTime.format(context).toString();
  }catch(e){
    throw e;

  }
}


Future<String> SelectTimeForIOS(BuildContext context) async {
  var selIOS;
  DatePicker.showDatePicker(
    context,
    dateFormat: 'HH:mm',
    initialDateTime: DateTime.now(),
    minDateTime: DateTime(2000),
    maxDateTime: DateTime(3000),
    onMonthChangeStartWithFirstDate: true,
    onConfirm: (dateTime, List<int> index) {
      DateTime selectdate = dateTime;
      selIOS = DateFormat.jm().format(selectdate);
      print(selIOS);
      return selIOS.toString();
    },
  );
  return "00:00 AM";
}

void showPopupMenu(
    int index,
    Offset ofset,
    BuildContext context,
    VoidCallback Ontap1,
    VoidCallback Ontap2,
    )async{
  final RenderObject? overlay =
  Overlay.of(context).context.findRenderObject();

  await showMenu(
    context: context,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(15.0.r))),
    constraints: BoxConstraints(),
    position: RelativeRect.fromRect(
        Rect.fromLTWH(ofset.dx, ofset.dy, 100, 100),
        Rect.fromLTWH(0, 0, overlay!.paintBounds.size.width,
            overlay.paintBounds.size.height)),
    items: [
      PopupMenuItem<String>(
        height: 28.h,
        value: "1",
        onTap:(){
          Ontap1.call();
         // Navigator.pop(context);
          print("Called");
        },
        // row with 2 children
        child: Container(
            child: Row(
              children: [
                Text(
                  'Edit Name',
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
      PopupMenuItem<String>(
        value: "2",
        height: 32.h,
        onTap: Ontap2,
        child: Container(
            child: Row(
              children: [
                Text(
                  'Delete',
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
    ],

    // elevation: 8.0,
  );
}


showAlertDialog(
    BuildContext context,
    VoidCallback ontap1,
    VoidCallback ontap2,

    ) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel",   style: Montserrat.copyWith(
      fontSize: 15.sp,
      color: Colors.red,
      fontWeight: FontWeight.w700,
    ),),
    onPressed:  ontap1,
  );
  Widget continueButton = TextButton(
    child: Text("Confirm"  , style: Montserrat.copyWith(
    fontSize: 15.sp,
      color: Colors.blue,
      fontWeight: FontWeight.w700,
    ),),
    onPressed:ontap2,
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Deletion"),
    content: Text("are you sure, you want to Delete this Cateogry,"
        "it will be deleted for ever along with the products." , style: Montserrat.copyWith(
      fontSize: 15.sp,
      color: const Color(0xff242020),
      fontWeight: FontWeight.w700,
      height: 1.5.h
    ),),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}