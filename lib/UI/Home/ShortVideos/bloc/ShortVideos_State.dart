library ShortVideos_State;



import 'package:Yumgott/Core/Classes/Classes.dart';

import 'package:built_value/built_value.dart';


part 'ShortVideos_State.g.dart';

abstract class ShortVideosState implements Built<ShortVideosState, ShortVideosStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get KeyBoardStatus;
  bool? get success;
  //
  // GetVideoCommentsModel? get GetVideoComments;
  // SendCommentModel? get SendComment;

  List<Comment>? get AllComments;
  ShortVideosState._();



  factory ShortVideosState([updates(ShortVideosStateBuilder b)]) = _$ShortVideosState;
  factory ShortVideosState.initail() {
    return ShortVideosState((b) => b
        ..error =""
        ..isLoading = false
        ..KeyBoardStatus = false
        ..success = false
        // ..GetVideoComments = null
        // ..SendComment = null
        ..AllComments = []


    );
  }
}
