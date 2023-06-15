import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Core/constants/strings.dart';

import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  bool? ShowPolicyContainer;
  VoidCallback? ontap3;

  VideoPlayerItem(
      {Key? key,
      required this.size,
      required this.videoUrl,
        this.ShowPolicyContainer,
        this.ontap3
      })
      : super(key: key);

  final Size size;

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  VideoPlayerController? _videoController;
  bool isShowPlaying = false;

  @override
  void initState() {
    super.initState();

    _videoController = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) {
        print("hi");
        setState(() {
          _videoController!.play();
          isShowPlaying = false;
        });
        _videoController!.setLooping(true);
      });

  }

  @override
  void dispose() {
    super.dispose();
    _videoController!.dispose();
  }

  Widget isPlaying() {
    return
      _videoController!.value.isInitialized?
      _videoController!.value.isPlaying && !isShowPlaying
        ? Container()
        : Icon(
            Icons.play_arrow,
            size: 80.w,
            color: white.withOpacity(0.5),
          ): Container();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        setState(() {
          if (widget.ShowPolicyContainer!){
            widget.ontap3!.call();
          }
          _videoController!.value.isPlaying
              ? _videoController!.pause()
              : _videoController!.play();
        });
      },
      child: RotatedBox(
        quarterTurns: 0,
        child: Container(
            height: widget.size.height,
            width: widget.size.width,
            child: Stack(
              children:[
                Container(
                  height: widget.size.height,
                  width: widget.size.width,
                  decoration: BoxDecoration(color: black),
                  child: Stack(
                    children:[

                      _videoController!.value.isInitialized
                          ? VideoPlayer(_videoController!)
                          : Container(
                        width: w,
                        height: h,
                        color: Colors.black,child: Center(child: Container(child:Image.asset("Assets/images/2.png",width: 116.w,)),),),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(),
                          child: isPlaying(),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
