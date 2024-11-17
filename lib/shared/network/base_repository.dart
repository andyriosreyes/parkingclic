import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:parkingclic/shared/constant/strings.dart';
import 'package:parkingclic/shared/network/failures.dart';
import 'package:parkingclic/shared/network/result.dart';

typedef EntityMapper<Entity, Model> = Model Function(Entity entity);

abstract class ErrorCode {
  static const error = "Error";
  static const failed = "Failed";
  static const message = "message";
  static const unauthorized = "unauthorized";
}

abstract class BaseRepository {
  final String endpoint = "";

  final Map<String, String> _headers = {
    HttpHeaders.acceptHeader: "application/json",
    HttpHeaders.contentTypeHeader: "application/json",
  };

  final _logger = Logger();

  Dio get dio => Dio()..options.headers = _headers;

  Future<Either<Failure, ResponseType>> safeCall<RequestType, ResponseType>(
      Future<RequestType> call,
      {required EntityMapper<RequestType, ResponseType> entityMapper}) async {
    try {
      var response = await call;
      _logger.d("Api success message -> $response");
      return Right((entityMapper != null ? entityMapper(response) : response)
          as ResponseType);
    } catch (exception) {
      _logger.e(exception);
      if (exception is DioException) {
        switch (exception.type) {
          case DioExceptionType.connectionTimeout:
          case DioExceptionType.sendTimeout:
          case DioExceptionType.receiveTimeout:
          case DioExceptionType.cancel:
            _logger.e("Api error message -> ${AppStrings.poorNetworkError}");
            return const Left(ServerFailure("errorMessage", 500));
            break;

          case DioExceptionType.connectionError:
            _logger.e("Api error message -> ${AppStrings.noNetworkError}");
            return const Left(ServerFailure(AppStrings.noNetworkError,300));
            break;

          case DioExceptionType.badResponse:
            //return _getError("badresponse");
            break;
          case DioExceptionType.badCertificate:
            break;
          case DioExceptionType.unknown:
            break;
        }
      }
      return const Left(ServerFailure(AppStrings.genericError,900));
    }
  }

  Result<T> _getError<T>(Response response) {
    if (response?.data != null && response?.data is Map<String, dynamic>) {
      if ((response.data as Map<String, dynamic>)
          .containsKey(ErrorCode.message)) {
        _logger.e("Api error response -> ${response.data.toString()}");
        final errorMessage = response.data[ErrorCode.message];
        return Error(errorMessage);
      }
    }
    return Error(
      AppStrings.genericError,
    );
  }
}
