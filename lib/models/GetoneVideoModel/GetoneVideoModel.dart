// //
// library GetoneVideoModel;
//
// import 'dart:convert';
//
// import 'package:Yumgott/models/GetAllProductsModel/ProductModel.dart';
// import 'package:Yumgott/models/GetAllVidoesModel/GetAllVidoesModel.dart';
// import 'package:Yumgott/models/GetoneVideoModel/GetoneVideoModel.dart';
// import 'package:Yumgott/models/UserDataModel/UserModel.dart';
// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
//
// import 'package:Yumgott/models/serializer/serializer.dart';
//
//
// part 'GetoneVideoModel.g.dart';
//
// abstract class GetoneVideoModel
//     implements Built<GetoneVideoModel, GetoneVideoModelBuilder> {
//
//   String? get status;
//   GetAllVidoesModel? get data;
//
//   GetoneVideoModel._();
//   factory GetoneVideoModel(
//       [void Function(GetoneVideoModelBuilder b)? updates]) =
//   _$GetoneVideoModel;
//
//   String toJson() {
//     return json.encode(
//         serializers.serializeWith(GetoneVideoModel.serializer, this));
//   }
//
//   static GetoneVideoModel? fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         GetoneVideoModel.serializer, json.decode(jsonString));
//   }
//
//   static Serializer<GetoneVideoModel> get serializer =>
//       _$getoneVideoModelSerializer;
// }
