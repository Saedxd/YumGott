// ignore_for_file: constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CustomException implements Exception {

  String indExceptionType(
    Exception error,
  ){
    try {
      if (error is DioException) {
        switch (error.type) {
          case DioExceptionType.badResponse:
            break;
          // baseResponse = serializers.deserialize(json.decode(e.response!.data),
          //     specifiedType: const FullType(
          //       UserDataModel,
          //       [
          //         FullType(
          //           BuiltList,
          //           [
          //             FullType(UserDataModel),
          //           ],
          //         ),
          //       ],
          //     )) as UserDataModel;
          // return baseResponse;

          case DioExceptionType.connectionTimeout:
            return  'Connection not established';
          case DioExceptionType.sendTimeout:
            return  'Failed to send';
          case DioExceptionType.receiveTimeout:
            return
              'Failed to receive'
            ;
          case DioExceptionType.badCertificate:
          case DioExceptionType.cancel:
          case DioExceptionType.connectionError:
          case DioExceptionType.unknown:
            return
                "Something Went Wrong, please check your connection and try again";
        }
      } else {
        return  'Error unrecognized';
      }
    } on FormatException catch (e) {
      return " ";
    }
    return  'Error unrecognized';
  }
}
