// import 'dart:io';
// import 'package:Yumgott/Core/Classes/Extentions/Extentions.dart';
// import 'package:Yumgott/Core/widgets/GallaryView.dart';
// import 'package:Yumgott/Core/widgets/ThemeIcon.dart';
// import 'package:Yumgott/Core/widgets/VideoPostTile.dart';
// import 'package:Yumgott/Injection.dart';
// import 'package:Yumgott/UI/Camera/Media/Media.dart';
// import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_Bloc.dart';
// import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_Event.dart';
// import 'package:Yumgott/UI/Camera/SelectMediaScreen/bloc/SelectMedia_State.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:video_player/video_player.dart';
// class SelectMedia extends StatefulWidget {
//
//   @override
//   State<SelectMedia> createState() => _SelectMediaState();
// }
// enum PostMediaType {
//   video,
// }
//
// String VideoPath="";
// class _SelectMediaState extends State<SelectMedia> {
//   late VideoPlayerController _controller;
//   final _SelectMediaBloc = sl<SelectMediaBloc>();
//
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }
// String? path;
//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     return BlocBuilder(
//         bloc: _SelectMediaBloc,
//         builder: (BuildContext context, SelectMediaState state)
//     {
//       return
//       Scaffold(
//         backgroundColor: Theme.of(context).backgroundColor,
//         body: SafeArea(
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 55,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ThemeIconWidget(
//                     ThemeIcon.close,
//                     color: Theme
//                         .of(context)
//                         .primaryColor,
//                     size: 27,
//                   ).ripple(() {
//                     Navigator.pop(context);
//                   }),
//                   const Spacer(),
//                   // Image.asset(
//                   //   'assets/logo.png',
//                   //   width: 80,
//                   //   height: 25,
//                   // ),
//                   const Spacer(),
//                   ThemeIconWidget(
//                     ThemeIcon.nextArrow,
//                     color: Theme
//                         .of(context)
//                         .primaryColor,
//                     size: 27,
//                   ).ripple(() {
//                     // if (_selectPostMediaController.selectedMediaList.isNotEmpty) {
//                     //   Get.to(() => AddPostScreen(
//                     //     items: _selectPostMediaController.selectedMediaList,
//                     //     competitionId: widget.competitionId,
//                     //     clubId: widget.clubId,
//                     //   ));
//                     // }
//                   }),
//                 ],
//               ).hp(20),
//               const SizedBox(height: 20),
//
//
//
//               state.SelectedVideoPath!.isNotEmpty?
//               !state.VideoChange_Isloading!
//          //     _controller.value.isInitialized
//                   ?VideoPostTile(
//                 url:state.SelectedVideoPath!,
//                 isLocalFile: true,
//                 play: true,
//               )
//                   : Container():Container(),
//         //:Container(),
//
//
//
//
//
//               Container(
//               height: h/1.3,
//               width: w,
//               child: Gallary(Media_Path: (Value) async{
//                       print(Value);
//                       print("LOL");
//                       // if (widget.url!=Url){
//                       //   videoPlayerController = VideoPlayerController.file(File(widget.url));
//                       // }
//                         print(  state.SelectedVideoPath!);
//                     //  if (_controller.value.isInitialized)
//                    //   _controller.dispose();
//                    //    _controller = VideoPlayerController.file(File(Value))
//                    //      ..initialize().then((_) {
//                    //        _SelectMediaBloc.add(ChangeSelectedVideoPath((b)=>b..Value = Value));
//                    //        _controller.play();
//                    //        _controller.setLooping(true);
//                    //      });
//
//                       //45): /storage/emulated/0/WhatsApp/Media/WhatsApp Video/VID-20221124-WA0020(0)(0)(0).mp4
//                       // I/flutter (12945): VideoPath : /storage/emulated/0/WhatsApp/Media/WhatsApp Video/VID-20221124-WA0020.mp4
//
//                     }, mediaSelectionCompletion: (Iterable<Media> l) { path = l.first.file!.path;
//                    _SelectMediaBloc.add(ChangeSelectedVideoPath((b)=>b..Value = path));
//
//
//               },),
//             )
//
//
//
//             ],
//           ),
//         ),
//       );
//     }
//     );
//   }
// }
