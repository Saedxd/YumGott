import 'dart:typed_data';

import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:Yumgott/UI/Profiles/UserProfile/pages/UserProfile.dart';
import 'package:Yumgott/main.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Event.dart';
import 'package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_State.dart';


class ShortVidoesBloc extends Bloc<ShortVideosEvent, ShortVideosState> {
  IRepository _repository;

  ShortVidoesBloc(this._repository) : super(ShortVideosState.initail());

  @override
  ShortVideosState get initialState => ShortVideosState.initail();

  @override
  Stream<ShortVideosState> mapEventToState(
      ShortVideosEvent event,
  ) async*{

    // if (event is GetComments) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..GetVideoComments = null
    //     );
    //
    //
    //         state.AllComments!.clear();
    //     final date = await _repository.GetVideoComments(event.Vidoe_ID!);
    //     print(date);
    //     yield state.rebuild((b) => b
    //       ..GetVideoComments.replace(date)
    //     );
    //
    //     for(int i=0;i<state.GetVideoComments!.data!.length;i++){
    //       Comment com = Comment();
    //       com.comment = state.GetVideoComments!.data![i].comment.toString();
    //       com.time = state.GetVideoComments!.data![i].createdAt.toString();
    //       com.UserName = state.GetVideoComments!.data![i].user!.name.toString();
    //       com.ProfileImage = state.GetVideoComments!.data![i].user!.photo.toString();
    //       state.AllComments!.add(com);
    //     }
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //       ..GetVideoComments = null
    //     );
    //   }
    // }

//     if (event is AddComment) {
//       try {
//
//
//         yield state.rebuild((b) => b
//           ..success= false
//         );
//         Comment com = Comment();
//         com.comment =  event.comment!;
//         com.time = DateTime.now().toString();
//         com.UserName = name;
//         com.ProfileImage = image;
//         state.AllComments!.insert(0, com);
//
//
//
// //wing Redmi S2 logs:
// // I/flutter (24494):
// // I/flutter (24494): *** Request ***
// // I/flutter (24494): uri: https://api-yum.onrender.com/api/v1/comments
// // I/flutter (24494): method: POST
// // I/flutter (24494): responseType: ResponseType.plain
// // I/flutter (24494): followRedirects: true
// // I/flutter (24494): connectTimeout: 0
// // I/flutter (24494): sendTimeout: 0
// // I/flutter (24494): receiveTimeout: 0
// // I/flutter (24494): receiveDataWhenStatusError: true
// // I/flutter (24494): extra: {}
// // I/flutter (24494): headers:
// // I/flutter (24494):  Accept: application/json
// // I/flutter (24494):  Authorization: Bearer
// // I/flutter (24494):  content-type: application/json; charset=utf-8
// // I/flutter (24494): data:
// // I/flutter (24494): {comment: vghj first time I was just , rating: 3, post: 5c8a1d5b0190b214260dc057, product: 5c8a1d5b0190b214260dc057, user: }
// // I/flutter (24494):
// // I/flutter (24494): *** Request ***
// // I/flutter (24494): uri: https://api-yum.onrender.com/api/v1/comments
// // I/flutter (24494): method: POST
// // I/flutter (24494): responseType: ResponseType.plain
// // I/flutter (24494): followRedirects: true
// // I/flutter (24494): connectTimeout: 0
// // I/flutter (24494): sendTimeout: 0
// // I/flutter (24494): receiveTimeout: 0
// // I/flutter (24494): receiveDataWhenStatusError: true
// // I/flutter (24494): extra: {}
// // I/flutter (24494): headers:
// // I/flutter (24494):  Accept: application/json
// // I/flutter (24494):  Authorization: Bearer
// // I/flutter (24494):  content-type: application/json; charset=utf-8
// // I/flutter (24494):  cookie: __cf_bm=ZFmXRyJN_r0bYHqunk9flv3NKYWL2etrZQ9ee1VEBrc-1685955860-0-ASo+sk9+yaFOSLlUSY7Ewxyy5v2UaJ4KlmiJPLEPE9RjNBM5mVNB3iEmr5G4CExPQDyIAcef3aHvnh7ZQIV70j0=; _
// // cfuvid=lMcP.F30VK79c7Kp4H5UbB9kNb.0B.5nS3x4LpRtI8Y-1685955860246-0-604800000
// // I/flutter (24494): data:
// // I/flutter (24494): {comment: vghj first time I was just , rating: 3, post: 5c8a1d5b0190b214260dc057, product: 5c8a1d5b0190b214260dc057, user: }
// // I/flutter (24494):
// // I/flutter (24494): *** DioError ***:
// // I/flutter (24494): uri: https://api-yum.onrender.com/api/v1/comments
// // I/flutter (24494): DioError [DioErrorType.response]: Http status error [400]
// // I/flutter (24494): uri: https://api-yum.onrender.com/api/v1/comments
// // I/flutter (24494): statusCode: 400
// // I/flutter (24494): headers:
// // I/flutter (24494):  connection: keep-alive
// // I/flutter (24494):  x-render-origin-server: Render
// // I/flutter (24494):  access-control-allow-origin: *
// // I/flutter (24494):  date: Mon, 05 Jun 2023 09:06:18 GMT
// // I/flutter (24494):  content-encoding: gzip
// // I/flutter (24494):  vary: Accept-Encoding
// // I/flutter (24494):  cf-cache-status: DYNAMIC
// // I/flutter (24494):  content-type: application/json; charset=utf-8
// // I/flutter (24494):  server: cloudflare
// // I/flutter (24494):  x-powered-by: Express
// // I/flutter (24494):  alt-svc: h3=":443"; ma=86400
// // I/flutter (24494):  content-length: 148
// // I/flutter (24494):  cf-ray: 7d2742436eeacd5d-ZDM
// // I/flutter (24494):  etag: W/"93-++qJu46RRTpO7zlTkHMntvdmwNk"
// // I/flutter (24494): Response Text:
// // I/flutter (24494): {"status":"fail","message":"Invalid input Data Cast to ObjectId failed for value \"\" (type string) at path \"user\" because of \"BSONTypeError\""}
// // I/flutter (24494):
// // I/flutter (24494):
// // I/flutter (24494): *** DioError ***:
// // I/flutter (24494): uri: https://api-yum.onrender.com/api/v1/comments
// // I/flutter (24494): DioError [DioErrorType.response]: Http status error [400]
// // I/flutter (24494): uri: https://api-yum.onrender.com/api/v1/comments
// // I/flutter (24494): statusCode: 400
// // I/flutter (24494): headers:
// // I/flutter (24494):  connection: keep-alive
// // I/flutter (24494):  x-render-origin-server: Render
// // I/flutter (24494):  access-control-allow-origin: *
// // I/flutter (24494):  date: Mon, 05 Jun 2023 09:06:18 GMT
// // I/flutter (24494):  content-encoding: gzip
// // I/flutter (24494):  vary: Accept-Encoding
// // I/flutter (24494):  cf-cache-status: DYNAMIC
// // I/flutter (24494):  content-type: application/json; charset=utf-8
// // I/flutter (24494):  server: cloudflare
// // I/flutter (24494):  x-powered-by: Express
// // I/flutter (24494):  alt-svc: h3=":443"; ma=86400
// // I/flutter (24494):  content-length: 148
// // I/flutter (24494):  cf-ray: 7d2742436eeacd5d-ZDM
// // I/flutter (24494):  etag: W/"93-++qJu46RRTpO7zlTkHMntvdmwNk"
// // I/flutter (24494): Response Text:
// // I/flutter (24494): {"status":"fail","message":"Invalid input Data Cast to ObjectId failed for value \"\" (type string) at path \"user\" because of \"BSONTypeError\""}
// // I/flutter (24494):
// // I/flutter (24494):
// // I/flutter (24494): NetworkException 2ed
// // I/flutter (24494): DioError [DioErrorType.response]: Http status error [400]
// // I/flutter (24494): Source stack:
// // I/flutter (24494): #0      DioMixin.fetch (package:dio/src/dio_mixin.dart:488)
// // I/flutter (24494): #1      DioMixin.request (package:dio/src/dio_mixin.dart:483)
// // I/flutter (24494): #2      DioMixin.post (package:dio/src/dio_mixin.dart:97)
// // I/flutter (24494): #3      HttpHelper.SendCommentOnVideo (package:Yumgott/Data/http_helper/http_helper.dart:1201)
// // I/flutter (24494): #4      Repository.SendCommentOnVideo (package:Yumgott/Data/repository/repository.dart:159)
// // I/flutter (24494): <asynchronous suspension>
// // I/flutter (24494): #5      ShortVidoesBloc.mapEventToState (package:Yumgott/UI/Home/ShortVideos/bloc/ShortVideos_Bloc.dart:70)
// // I/flutter (24494): <asynchronous suspension>
// // I/flutter (24494): get Error Instance of 'NetworkException'
//         yield state.rebuild((b) => b
//           ..success= true
//         );
//         final date = await _repository.SendCommentOnVideo(event.post!, event.comment!,event.product!,event.user!);
//
//
//
//       } catch (e) {
//         print('get Error $e');
//       }
//     }
    if (event is ChangeKeyBaordStatus) {
      try {


        yield state.rebuild((b) => b
          ..KeyBoardStatus= event.value!
        );


      } catch (e) {
        print('get Error $e');
      }
    }


  }
}
