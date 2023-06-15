import 'dart:io';

import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Camera/DisplayVideoScreen/bloc/DisplayVideo_Bloc.dart';
import 'package:Yumgott/UI/Camera/DisplayVideoScreen/bloc/DisplayVideo_State.dart';
import 'package:Yumgott/core/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class DisplayVideo extends StatefulWidget {
  DisplayVideo({Key? key, required this.file_Path}) : super(key: key);

  String file_Path;

  @override
  State<DisplayVideo> createState() => _DisplayVideoState();
}

class _DisplayVideoState extends State<DisplayVideo> {
  final _DisplayVidoeBloc = sl<DisplayVidoeBloc>();
  late VideoPlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(File(widget.file_Path))
      ..initialize().then((_) {
         _controller.setLooping(true);
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    // setState(() {
    //   _controller.pause();
    // });
  }

  
  @override
  Widget build(BuildContext context) {
    var tmp = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _DisplayVidoeBloc,
        builder: (BuildContext context, DisplayVidoeState state)
    {
      return Scaffold(
        body: Stack(
          children: [
            _controller.value.isInitialized
                ? Container(
              width: w,
              height: h,
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            )
                : Container(),

            Positioned(
              bottom: 50.h,
              left: 50.w,
              child:
              SafeArea(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      _controller.pause();
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 5.w),
                    height: 38.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffFA3858),
                      borderRadius: BorderRadius.circular(5.0.r),
                      border: Border.all(width: 0.5.w, color: const Color(0xffFA3858)),
                    ),
                    child: Center(
                        child:Text(
                          'Back',
                          style: Montserrat.copyWith(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              height: 1.5.h
                          ),
                          softWrap: true,
                        )

                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50.h,
              right: 50.w,
              child:
              SafeArea(
                child: InkWell(
                  onTap: (){
                    //todo : send request.
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 5.w),
                    height: 38.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffFA3858),
                      borderRadius: BorderRadius.circular(5.0.r),
                      border: Border.all(width: 0.5.w, color: const Color(0xffFA3858)),
                    ),
                    child: Center(
                        child:Text(
                          'Upload',
                          style: Montserrat.copyWith(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              height: 1.5.h
                          ),
                          softWrap: true,
                        )

                    ),
                  ),
                ),
              ),
            ),


          ],
        )
      );
    }
    );
  }
}
