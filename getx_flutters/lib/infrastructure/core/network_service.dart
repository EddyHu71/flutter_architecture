import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:getx_flutters/domain/core/exceptions/exceptions.dart';
import 'package:getx_flutters/domain/core/i_network_service.dart';
import 'package:getx_flutters/domain/core/i_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INetworkService)
class NetworkService implements INetworkService {
  final Dio _dio;
  final Connectivity _connectivity;
  final IStorage baseStorage;

  NetworkService(
    this._dio,
    this.baseStorage,
    this._connectivity,
  );

  @override
  Future<dynamic> getHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    bool useAuth = true,
  }) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'accept': ContentType.json.mimeType
        };

        if (header != null) {
          headers.addAll(header);
        }
        _dio.options.headers = headers;

        final Response response = await _dio.get(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
        );
        return response.data;
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(e.response);
          default:
            throw ServerException();
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> postHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    dynamic content,
    String? contentType,
    Map<String, dynamic>? header,
    bool useAuth = true,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await _connectivity.checkConnectivity();

    if (connectivityResult != ConnectivityResult.none) {
      try {
        // await baseStorage.openBox(StorageConstants.base);
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }
        // if (useAuth) {
        //   final Map<String, dynamic>? security = await baseStorage.getData();
        //   if (security != null) {
        //     headers.addAll({'Authorization': 'Bearer ${security["token"]}'});
        //   }
        // }

        _dio.options.headers = headers;
        // await baseStorage.close();

        final Response response = await _dio.post(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        );
        return response.data;
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(
              e.response,
            );
          default:
            throw ServerException();
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> putHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    Map<String, dynamic>? header,
    bool useAuth = true,
  }) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        // await baseStorage.openBox(StorageConstants.base);
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }

        _dio.options.headers = headers;
        final Response response = await _dio.put(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
        );
        return response.data;
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(e.response);
          default:
            throw ServerException();
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> download({
    required String url,
    required String downloadPath,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    bool useAuth = true,
  }) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        // await baseStorage.openBox(StorageConstants.base);
        final Map<String, dynamic> headers = {
          'Accept': ContentType.binary.mimeType,
        };
        // if (useAuth) {
        //   final String? security = await baseStorage.getString(key: 'jwt');
        //   if (security != null) {
        //     headers.addAll({'Authorization': 'Bearer $security'});
        //   }
        // }
        final savedDir = Directory(downloadPath);
        final bool hasExisted = await savedDir.exists();
        //print(hasExisted);
        if (!hasExisted) {
          await savedDir.create(recursive: true);
          //print('directory created');
        }
        _dio.options.headers = headers;
        // await baseStorage.close();
        final Response response = await _dio.download(url, downloadPath);
        return response.data;
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(e.response);
          default:
            throw ServerException();
        }
      }
    } else {
      throw NoInternetException();
    }
  }
}
