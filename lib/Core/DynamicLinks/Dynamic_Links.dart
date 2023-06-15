import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';


class DynamicLinksProvider{

  String? _linkMessage;
  bool _isCreatingLink = false;

  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
  final String _testString =
      'To test: long press link and then copy and click from a non-browser '
      "app. Make sure this isn't being tested on iOS simulator and iOS xcode "
      'is properly setup. Look at firebase_dynamic_links/README.md for more '
      'details.';



Future<void> initDynamicLinks() async { // Check if you received the link via `getInitialLink` first
  final PendingDynamicLinkData? initialLink = await FirebaseDynamicLinks.instance.getInitialLink();
  print("LINTENING : ${initialLink}");
  // I/flutter (19895): LINTENING : PendingDynamicLinkData({ios: null, android: {clickTimestamp: 1685442039435, minimumVersion: 0}, link: https://yumgott.page.link/Reels/?id=123, utmParamet
  // ers: {utm_medium: dynamic_link, utm_source: firebase}})

  if (initialLink != null) {
    final Uri deepLink = initialLink.link;
    print(deepLink.path);

    var list = initialLink.link.toString().split(".link/");
    var validList = list[1].split("/");
    print(validList);
    if (validList[0] == "Reels") {
      print("Found REELS loool");
      //I/flutter (21055): [Reels, ?id=123]
      // I/flutter (21055): Found REELS loool

      //todo : navigate to reels using the ID
    }
    else if (validList[0] == "Product") {

    }
    //I/flutter (19895): /Reels/
    // Example of using the dynamic link to push the user to a different screen
  //  Navigator.pushNamed(context, deepLink.path);
  }

  dynamicLinks.onLink.listen((dynamicLinkData) {
    print("LINTENING");
    print(dynamicLinkData.link.path);
    //
    // var list = dynamicLinkData.link.toString().split(".link/");
    // var validList = list[1].split("/");
    // print(validList);
    print(" dynamicLinks.onLink.listen");
    // if (validList[0] == "Reels") {
    //
    // } else if (validList[0] == "resource") {
    //
    // }


   // Navigator.pushNamed(context, dynamicLinkData.link.path);
  }).onError((error) {
    print('onLink error');
    print(error.message);
  });
}


  Future<String> CreateLink(String pageName,String Reel_ID) async {
    final String DynamicLink = 'https://YumGott.page.link/Reels/?id=${Reel_ID}';

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://YumGott.page.link',




      link: Uri.parse(DynamicLink),
      androidParameters: const AndroidParameters(
        packageName: 'com.ActiveHub.Yumgott',
        minimumVersion: 0,
      ),
      iosParameters: const IOSParameters(
        bundleId: 'com.ActiveHub.Yumgott',
        minimumVersion: '0',
      ),
    );

    //final FirebaseDynamicLinks link = FirebaseDynamicLinks.instance;
    final  RefLink = await dynamicLinks.buildShortLink(parameters);


    return RefLink.shortUrl.toString();
  }


  //
  //  Future<void> initDynamicLinks(BuildContext context)async {
  //   FirebaseDynamicLinks.instance.onLink.listen(
  //       (PendingDynamicLinkData p) async{
  //             (PendingDynamicLinkData dynamicLink) async {
  //           // final Uri deepLink = dynamicLink.link;
  //           //
  //           // var isStory = deepLink.pathSegments.contains('storyData');
  //           // // TODO :Modify Accordingly
  //           // if (isStory) {
  //           //   String id = deepLink.queryParameters['id']!;
  //           //   // TODO :Modify Accordingly
  //           //
  //           //   if (deepLink != null) {
  //           //     // TODO : Navigate to your pages accordingly here
  //           //
  //           //     // try{
  //           //     //   await firebaseFirestore.collection('Stories').doc(id).get()
  //           //     //       .then((snapshot) {
  //           //     //         StoryData storyData = StoryData.fromSnapshot(snapshot);
  //           //     //
  //           //     //         return Navigator.push(context, MaterialPageRoute(builder: (context) =>
  //           //     //           StoryPage(story: storyData,)
  //           //     //         ));
  //           //     //   });
  //           //     // }catch(e){
  //           //     //   print(e);
  //           //     // }
  //           //   } else {
  //           //     return null;
  //           //   }
  //           // }
  //           //     (Error e) async {
  //           //   print('link error');
  //           // };
  //         };
  //                 (PendingDynamicLinkData dynamicLink) async {
  //               final Uri deepLink = dynamicLink.link;
  //
  //
  //               var isStory = deepLink.pathSegments.contains('Reels');
  //               // TODO :Modify Accordingly
  //               print(isStory);
  //               if (isStory) {
  //                 String id = deepLink.queryParameters['id']!;
  //                 // TODO :Modify Accordingly
  //                 print(id);
  //                 if (deepLink != null) {
  //                   // TODO : Navigate to your pages accordingly here
  //
  //                   // try{
  //                   //   await firebaseFirestore.collection('Stories').doc(id).get()
  //                   //       .then((snapshot) {
  //                   //         StoryData storyData = StoryData.fromSnapshot(snapshot);
  //                   //
  //                   //         return Navigator.push(context, MaterialPageRoute(builder: (context) =>
  //                   //           StoryPage(story: storyData,)
  //                   //         ));
  //                   //   });
  //                   // }catch(e){
  //                   //   print(e);
  //                   // }
  //                 } else {
  //                   return null;
  //                 }
  //               }
  //                   (Error e) async {
  //                 print('link error');
  //               };
  //             };
  //       }
  //   );
  //
  //
  //
  //   final PendingDynamicLinkData? data = await FirebaseDynamicLinks.instance.getInitialLink();
  //   try{
  //     final Uri deepLink = data!.link;
  //     var isStory = deepLink.pathSegments.contains('Reels');
  //     if(isStory){ // TODO :Modify Accordingly
  //       String id = deepLink.queryParameters['id']!; // TODO :Modify Accordingly
  //
  //       // TODO : Navigate to your pages accordingly here
  //
  //       // try{
  //       //   await firebaseFirestore.collection('Stories').doc(id).get()
  //       //       .then((snapshot) {
  //       //     StoryData storyData = StoryData.fromSnapshot(snapshot);
  //       //
  //       //     return Navigator.push(context, MaterialPageRoute(builder: (context) =>
  //       //         StoryPage(story: storyData,)
  //       //     ));
  //       //   });
  //       // }catch(e){
  //       //   print(e);
  //       // }
  //     }
  //   }catch(e){
  //     print('No deepLink found');
  //   }
  // }
}

