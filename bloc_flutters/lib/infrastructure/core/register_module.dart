import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:bloc_flutters/domain/core/i_storage.dart';

import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
import 'package:bloc_flutters/infrastructure/core/logger_interceptor.dart';
import 'package:bloc_flutters/infrastructure/core/model/token/auth_token.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class RegisterModule {
  // @Environment('prod')
  @Named('baseUrl')
  String get baseUrl => Urls.baseUrl;

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  HiveInterface get hive => Hive;

  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  Fresh get fresh => Fresh<AuthToken>(
        tokenHeader: (token) {
          return {'Authorization': '${token.tokenType} ${token.accessToken}'};
        },
        tokenStorage: InMemoryTokenStorage<AuthToken>(),
        refreshToken: (token, client) async {
          throw RevokeTokenException();
        },
      );

  // @preResolve
  @lazySingleton
  Dio dio(
    @Named('baseUrl') String baseUrl,
    IStorage _storage,
    Fresh _fresh,
  ) {
    final Dio _dio = Dio();
    final BaseOptions _options = BaseOptions(
      connectTimeout: 120000,
      receiveTimeout: 60000,
      sendTimeout: 60000,
      baseUrl: baseUrl,
    );
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return baseUrl.contains(host);
      };
      return client;
    };

    // await _storage.openBox(StorageConstants.security);
    // _dio.interceptors.add(AuthInterceptor(_storage, 'sessionId'));

    _dio.interceptors.add(_fresh);
    _dio.interceptors.add(
      LoggerInterceptor(
        requestHeader: true,
      ),
    );
    // _storage.close();
    _dio.options = _options;
    return _dio;
  }
}
