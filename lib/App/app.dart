import 'dart:async';

import 'package:Yumgott/App/Bloc/App_Bloc.dart';
import 'package:Yumgott/App/Bloc/App_Event.dart';
import 'package:Yumgott/App/Bloc/App_State.dart';
import 'package:Yumgott/Core/notification/my_notification.dart';

import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:Yumgott/UI/Camera/TakeVideoScreen/pages/CameraScreen.dart';
import 'package:Yumgott/UI/Home/HomeScreen/bloc/HomePage_Event.dart';
import 'package:Yumgott/UI/Home/HomeScreen/pages/HomePage.dart';
import 'package:Yumgott/UI/OnBoarding/Splash/pages/SplashPage.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:camera/camera.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:in_app_update/in_app_update.dart';

import '../core/Language/localization/demo_localization.dart';
import '../core/theme/theme_constants.dart';



class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(_) => const BorderSide(color: Colors.black54);
}
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

List<CameraDescription>? cameras;
class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  AppUpdateInfo? _updateInfo;
  final _AppBloc = sl<AppBloc>();
  String token = "";
  final pref = sl<IPrefsHelper>();


  Future<void> getCameraDescription()async{
    await availableCameras().then((value) async{
      cameras = await value;
    });
  }


  Future<void> checkVersion() async {
    InAppUpdate.checkForUpdate().then((info) {
      setState(() {
        _updateInfo = info;
      });
    }).catchError((e) {
      print(e);
    });


      _updateInfo?.updateAvailability ==
          UpdateAvailability.updateAvailable
          ?
        InAppUpdate.performImmediateUpdate().catchError((e){print(e);})


         : print("xd");
    //
  }


  @override
  void initState() {
    MyNotification().initialize(FlutterLocalNotificationsPlugin());
    getCameraDescription();
    GetUserr();
    checkVersion();
    WidgetsFlutterBinding.ensureInitialized();
    super.initState();
  }


  void GetUserr()async {
     token = await pref.getToken();
  }

  @override
  Widget build(BuildContext context) {

    Future.wait([
      precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoderBuilder, 'Assets/images/LOGO.svg'),
        null,
      ),
    ]);
    return BlocBuilder(
        bloc: _AppBloc,
        builder: (BuildContext context, AppState state) {
          return
          ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
            onTap: () {
              print("Clickedd");
              HomeBloc.add(ChangePolicyContainerApperiance((b) => b..value = false));
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            child: MaterialApp(

              theme:
           //   state.theme!,//todo : use this to Switch Between THEMES
              ThemeData(
                checkboxTheme: CheckboxThemeData(
                  checkColor: MaterialStateProperty.resolveWith((_) => Colors.black),
                  fillColor: MaterialStateProperty.resolveWith((_) => Colors.transparent),
                  side: AlwaysActiveBorderSide(),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home:Splash(),
           //    Splash( ontap: (){_AppBloc.add(ChangeTheme((b) => b..theme = MyTheme().lightTheme));},),
              //todo : Go to any Screen with this Line of Code to Switch between Themes
              //todo : ofc maybe you could make the _AppBloc a Global Variable then take action to Switch
             // loaded?   CameraScreen(cameras: cameras,):Container(),
              title: 'Yumgott',
              supportedLocales: [
                Locale('en', 'US'),
              //  Locale('ar', 'AR'),
              ],
              // localizationsDelegates: const [
              //   DemoLocalization.delegate,
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate
              // ],
              // localeResolutionCallback: (locale, supportedLocales) {
              //   for (var supportedLocale in supportedLocales) {
              //     if (supportedLocale.languageCode ==
              //         locale?.languageCode &&
              //         supportedLocale.countryCode ==
              //             locale?.countryCode) {
              //       return supportedLocale;
              //     }
              //   }
              // },
            ));
      },
      designSize: Size(375, 812),
    );
        }
    );

  }
}
