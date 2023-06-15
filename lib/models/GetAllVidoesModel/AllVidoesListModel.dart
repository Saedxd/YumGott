library AllVidoesListModel;

import 'dart:convert';


import 'package:Yumgott/models/GetAllVidoesModel/GetAllVidoesModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:Yumgott/models/serializer/serializer.dart';

part 'AllVidoesListModel.g.dart';

abstract class AllVidoesListModel
    implements Built<AllVidoesListModel, AllVidoesListModelBuilder> {


  String? get status;
  int? get results;
  int? get count;
  BuiltList<GetAllVidoesModel>? get data;


  AllVidoesListModel._();
  factory AllVidoesListModel(
      [void Function(AllVidoesListModelBuilder b)? updates]) =
  _$AllVidoesListModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(AllVidoesListModel.serializer, this));
  }

  static AllVidoesListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AllVidoesListModel.serializer, json.decode(jsonString));
  }

  static Serializer<AllVidoesListModel> get serializer =>
      _$allVidoesListModelSerializer;
}
