// import 'package:Yumgott/Core/widgets/Enum.dart';
// import 'package:Yumgott/UI/Camera/Media/Media.dart';
// import 'package:Yumgott/UI/Camera/SelectMediaScreen/pages/SelectMedia.dart';
// import 'package:flutter/material.dart';
// import 'package:gallery_media_picker/gallery_media_picker.dart';
//
// class Gallary extends StatefulWidget {
//    Gallary({Key? key,required this.Media_Path,required this.mediaSelectionCompletion}) : super(key: key);
//    final Function(String) Media_Path;
//  final Function(Iterable<Media>) mediaSelectionCompletion;
//   @override
//   State<Gallary> createState() => _GallaryState();
// }
//
// class _GallaryState extends State<Gallary> {
//   @override
//   Widget build(BuildContext context) {
//
//     return GalleryMediaPicker(
//       childAspectRatio: 1,
//       crossAxisCount: 3,
//       thumbnailQuality: 150,
//       thumbnailBoxFix: BoxFit.cover,
//       singlePick: true,
//       gridViewBackgroundColor: Theme.of(context).backgroundColor,
//       imageBackgroundColor: Colors.black,
//       maxPickImages: 10,
//       appBarHeight: 50,
//       selectedBackgroundColor: Theme.of(context).backgroundColor,
//       selectedCheckColor: Colors.black87,
//       selectedCheckBackgroundColor: Colors.white10,
//       onlyVideos: true,
//     //  onlyImages: widget.mediaType == PostMediaType.photo,
//
//       pathList: (paths) {
//         setState(() {
//           VideoPath = paths[0].path.toString();
//         });
//
//          widget.Media_Path.call(VideoPath);
//        Iterable<Media> medias = paths.map((e) => e.toMedia());
//         widget.mediaSelectionCompletion(medias);
//
//      //   print("VideoPath : ${VideoPath}");
//         // List<Media> medias = paths.map((e) => e.toMedia()).toList();
//         // widget.mediaSelectionCompletion(medias);
//         // // storyController.mediaSelected(paths);
//       },
//       appBarLeadingWidget: Align(
//           alignment: Alignment.bottomRight,
//           child: Padding(
//               padding: const EdgeInsets.only(right: 15, bottom: 12),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   // widget.hideMultiSelection == true
//                   //     ? Container()
//                   //     : Container(
//                   //   height: 30,
//                   //   width: 30,
//                   //   color: _customGalleryPickerController
//                   //       .allowMultipleSelection.value ==
//                   //       true
//                   //       ? Theme.of(context).primaryColor
//                   //       : Colors.transparent,
//                   //   child: const ThemeIconWidget(
//                   //     ThemeIcon.selectionType,
//                   //     color: Colors.white,
//                   //     size: 18,
//                   //   ),
//                   // ).circular.ripple(() {
//                   //   _customGalleryPickerController
//                   //       .toggleMultiSelectionMode();
//                   // }),
//                   // const SizedBox(
//                   //   width: 20,
//                   // ),
//                   // const ThemeIconWidget(
//                   //   ThemeIcon.camera,
//                   //   color: Colors.white,
//                   //   size: 18,
//                   // ).circular.ripple(() {
//                   //   handleCameraPress();
//                   // }),
//                   // // const SizedBox(
//                   // //   width: 20,
//                   // // ),
//                 ],
//               ))),
//     );
//   }
// }
//
// extension PickedAssetModelExtension on PickedAssetModel {
//   Media toMedia() {
//
//     Media media = Media();
//     media.id = id;
//     media.file = file;
//     media.thumbnail = thumbnail;
//     media.size = size;
//     media.creationTime = createDateTime;
//     media.title = title;
//     media.mediaType =GalleryMediaType.video;
//   //  type == 'image' ? GalleryMediaType.photo : GalleryMediaType.video;
//     return media;
//   }
// }
