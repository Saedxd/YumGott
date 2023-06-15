import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CachedImages extends StatefulWidget {
  CachedImages({Key? key,required this.Image,required this.Raduis}) : super(key: key);
  String? Image;
  double Raduis;
  @override
  State<CachedImages> createState() => _CachedImagesState();
}

class _CachedImagesState extends State<CachedImages> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return CachedNetworkImage(
      imageUrl:  widget.Image!,
      imageBuilder: (context, imageProvider) =>CircleAvatar(
        radius: widget.Raduis.r,
        child:ClipOval(
          child:
          Container(
            decoration: BoxDecoration(
              image:DecorationImage(image:imageProvider,fit: BoxFit.fill),
            ),
          ),),),
      placeholder: (context, url) => Container(child:   CircularProgressIndicator(),),
      errorWidget: (context, url, error) => Container(child: Icon(Icons.error)),
    );
  }
}
