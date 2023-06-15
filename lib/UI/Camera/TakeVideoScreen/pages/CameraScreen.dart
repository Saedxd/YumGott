import 'dart:io';
import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/UI/Camera/SelectMediaScreen/pages/SelectMedia.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/services.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:tapioca/tapioca.dart';
import 'package:path_provider/path_provider.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Camera/DisplayVideoScreen/pages/DisplayVideo.dart';
import 'package:Yumgott/UI/Camera/TakeVideoScreen/bloc/Camera_Bloc.dart';
import 'package:Yumgott/UI/Camera/TakeVideoScreen/bloc/Camera_Event.dart';
import 'package:Yumgott/UI/Camera/TakeVideoScreen/bloc/Camera_State.dart';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key? key,required this.GoBack}) : super(key: key);
   var cameras;
  VoidCallback GoBack;



  @override
  State<CameraScreen> createState() => _CameraScreenState();
}
// CameraException(error, Attempt to invoke virtual method 'void android.hardware.camera2.CameraCaptureSession.abortCaptures()' on a null object reference)
class _CameraScreenState extends State<CameraScreen>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late CameraController controller;
  XFile? videoFile;

  AnimationController? _animationController;
  Animation? _animation;

  final _CameraBloc = sl<CameraBloc>();
  void StartVideoRecording() async {
    try{
    if (!controller.value.isRecordingVideo&&   controller.value.isInitialized) {
      // await controller.prepareForVideoRecording();
      await controller.startVideoRecording();
    }


    } catch (e) {
    print(e);

    }
  }

  void StopVidoeRecording() async {
    try {
      if (controller.value.isRecordingVideo &&   controller.value.isInitialized) {
        XFile videoFile = await controller.stopVideoRecording();

       //  Directory tempDir = await getTemporaryDirectory();
       // String tempPath = tempDir.path;
       //  final fileName = basename(videoFile.path); // will return you the name of your file like REC9113430186235591563.mp4
       //   final filePath = "${path.path}/$fileName";


       PushNavigator(context,DisplayVideo(file_Path:videoFile.path,),(){});
      }
    } catch (e) {
      print(e);

    }
  }


Future<void> RequestPermission()async{
print("${await Permission.camera.request().isGranted} : ${await Permission.microphone.request().isGranted}");
  if (await Permission.camera.request().isGranted &&await Permission.microphone.request().isGranted ) {
  Future.delayed(Duration(milliseconds: 1000), () {
    InitializeController();
  });
  }else{
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.microphone,
      Permission.audio,
    ].request();
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Allow app to access your Camera and microphone to continue using this service'),
        content: const Text(
            'YumGott application requests to access your mobile\'s Permission to access Camera and microphone'),
        actions: <Widget>[

          // if user deny again, we do nothing
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Don\'t allow'),
          ),

          // if user is agree, you can redirect him to the app parameters :)
          TextButton(
            onPressed: () {

              openAppSettings();
              Navigator.pop(context);
            },
            child: const Text('Allow'),
          ),

        ],
      ),
    );
    ShowAnimatedTopbar(context,"Please Enable Camera and microphone permissions from settings", AnimatedSnackBarType.error);
    widget.GoBack.call();
  }

}

Future<void> InitializeController()async{
  var firstCamera = cameras;



  controller = CameraController(firstCamera![0], ResolutionPreset.high);
  controller.initialize().then((_)async {
    await controller.prepareForVideoRecording();
    setState(() {});
  }).catchError((Object e) {
    if (e is CameraException) {
      switch (e.code) {
        case 'CameraAccessDenied':
        // Handle access errors here.
          break;
        default:
        // Handle other errors here.
          break;
      }
    }
  });
  _CameraBloc.add(ChangeToCheckIfInitilized());
}


  @override
  void initState() {
    super.initState();
    RequestPermission();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if (mounted) {
     // _animationController!.dispose();
    //  controller.dispose();
     // _recordingState = RecordingState.UnSet;
    }
  }

  @override
  Widget build(BuildContext context) {
    var tmp = MediaQuery.of(context).size;

    var h = MediaQuery
        .of(context)
        .size
        .height;
    var w = MediaQuery
        .of(context)
        .size
        .width;
    return BlocBuilder(
        bloc: _CameraBloc,
        builder: (BuildContext context, CameraState state)
    {


    var camera;
    final size;
    var scale;
      if (state.Check_IfInitilized!)
        if (controller.value.isInitialized) {
          camera = controller.value;
          // fetch screen size
          size = MediaQuery
              .of(context)
              .size;

          // calculate scale depending on screen and camera ratios
          // this is actually size.aspectRatio / (1 / camera.aspectRatio)
          // because camera preview size is received as landscape
          // but we're calculating for portrait orientation
          scale = size.aspectRatio * camera.aspectRatio;

          // to prevent scaling down, invert the value
          if (scale < 1) scale = 1 / scale;
        }


      return
        Scaffold(
          extendBody: true,
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: [

                if (state.Check_IfInitilized!)
                !controller.value.isInitialized
                    ?Container()
                    :Container(
                  width: w,
                      height: h,
                      child:  AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: CameraPreview(controller),),
                    ),


                Positioned(
                  bottom: 0,
                  child: SafeArea(
                      child: GestureDetector(
                        onLongPressUp: (){
                              StopVidoeRecording();
                            _CameraBloc.add(ChangeRecordingStatus((b) => b..Value = false));

                        },
                        onLongPress: (){
                              StartVideoRecording();
                            _CameraBloc.add(ChangeRecordingStatus((b) => b..Value = true));

                        },
                        onTap: () {
                             },
                        child:
                        Container(
                          width: w,
                          margin: EdgeInsets.only(bottom: 35.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width:85.w,
                                  height:85.h,
                                //  margin: EdgeInsets.only(left: 20),
                                  decoration:BoxDecoration(
                                    border:Border.all(
                                      width:2.0,
                                      color:Colors.white,
                                    ),
                                    boxShadow: [BoxShadow(
                                      color:state.isRecording_Now! ? Colors.pink:Colors.transparent,
                                    )],
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                    radius:42.5,
                                    backgroundColor: Colors.transparent,
                                    child:CircleAvatar(
                                      radius:36.5.r,
                                      backgroundColor:state.isRecording_Now! ?Colors.pink:Colors.white,
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      )

                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SafeArea(
                      child: InkWell(
                        onTap: () {
                             },
                        child:

    InkWell(
      onTap: ()async{

        final List<AssetEntity>? result = await AssetPicker.pickAssets(
          context,
          pickerConfig: AssetPickerConfig(
            maxAssets: 1,
            requestType: RequestType.video,
            specialPickerType: SpecialPickerType.noPreview,
          ),
        ).then((value)async {
          if (value!.isNotEmpty){
            File? Path = await value[0].file;
            print(Path);
          }
        });
      },
      child: Container(
          margin: EdgeInsets.only(right: 45.w,bottom: 40.h),
          width: 52.w,
          height: 52.h,
      child:Stack(children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                              width: 42.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                // image: DecorationImage(
                                //   image: const AssetImage(''),
                                //   fit: BoxFit.cover,
                                // ),
                                borderRadius: BorderRadius.circular(10.0.r),
                                border: Border.all(width: 1.0.w,   color: Colors.red,),
                              ),
                            ),
                      ),
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Row(
                              children: [
                                Icon(Icons.add,size: 20.53.w,color: Colors.white,),
                              ],
                            )),
                      ],)),
    ),

                      )

                  ),
                ),

              ],
            ),
          ),
        );
    }
    );
  }
}
