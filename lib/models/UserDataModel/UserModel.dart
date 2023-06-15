//
// library UserModel;
//
// import 'dart:convert';
//
// import 'package:Yumgott/models/GetAllVidoesModel/GetAllVidoesModel.dart';
// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:Yumgott/models/serializer/serializer.dart';
//
// part 'UserModel.g.dart';
//
// abstract class UserModel
//     implements Built<UserModel, UserModelBuilder> {
//
//
//   String? get name;
//   String? get role;
//   String? get email;
//   String? get bio;
//   String? get profile_image;
//   String? get location;
//   // String? get location;
//   // String? get verifed;
//   String? get createdAt;
//   String? get updatedAt;
//   String? get profile_image_path;
//   String? get lat;
//   String? get lng;
//   String? get id;
//   int? get mobile_number;
//   double? get ratingsAverage;
//   double? get ratingsQuantity;
//   double? get wallet;
//   BuiltList<UserModel>? get followers;
//   BuiltList<UserModel>? get following;
//  // BuiltList<GetAllVidoesModel>? get saved;
//
//
//
//
//   UserModel._();
//
//   factory UserModel( [void Function(UserModelBuilder b)? updates]) = _$UserModel;
//
//
//
//   String toJson() {
//     return json.encode(
//         serializers.serializeWith(UserModel.serializer, this));
//   }
//
//   static UserModel? fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         UserModel.serializer, json.decode(jsonString));
//   }
//
//   static Serializer<UserModel> get serializer =>  _$userModelSerializer;
//
// }
