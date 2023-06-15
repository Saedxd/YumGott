//


library GetAllVidoesModel;


import 'dart:convert';
import 'package:Yumgott/models/UserDataModel/DataModel.dart';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:Yumgott/models/serializer/serializer.dart';


part 'GetAllVidoesModel.g.dart';

abstract class GetAllVidoesModel
    implements Built<GetAllVidoesModel, GetAllVidoesModelBuilder> {


  //  int? get id;
  //  DataModel? get user;
  //  DataModel? get restaurant;
  //  String? get bio;
  //  ProductModel? get product;
  //  String? get createdAt;
  //  String? get updatedAt;
  //  String? get video_path;
  //  String? get city;
  //  int? get status;
  // BuiltList<DataModel>? get likes;
  //  int? get views;




  GetAllVidoesModel._();
  factory GetAllVidoesModel(
      [void Function(GetAllVidoesModelBuilder b)? updates]) =
  _$GetAllVidoesModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(GetAllVidoesModel.serializer, this));
  }


  static GetAllVidoesModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetAllVidoesModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetAllVidoesModel> get serializer =>
      _$getAllVidoesModelSerializer;
}
