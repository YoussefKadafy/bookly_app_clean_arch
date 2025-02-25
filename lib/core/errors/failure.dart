import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMassage;

  Failure(this.errorMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMassage);
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time Out with Api Server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time Out with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Time Out with Api Server');

      case DioExceptionType.badCertificate:
        return ServerFailure('bad certificate ');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure('request was canceled with Api Server');

      case DioExceptionType.connectionError:
        return ServerFailure('No internet Connection');

      case DioExceptionType.unknown:
        return ServerFailure('Ooops there is an Error , Please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 500) {
      return ServerFailure('There is a problem with server , please try later');
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure('${response['error']['message']}');
    } else {
      return ServerFailure(
          'there is an error with response , please try later');
    }
  }
}
