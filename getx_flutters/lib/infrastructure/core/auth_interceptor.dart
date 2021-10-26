import 'package:dio/dio.dart';
import 'package:getx_flutters/domain/core/i_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInterceptor extends Interceptor {
  // final String? token;
  final IStorage _storage;
  final String _authKey;
  AuthInterceptor(this._storage, this._authKey);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? security = _storage.getString(key: _authKey);
    final Map<String, dynamic> headers = options.headers;

    if (security != null) {
      headers.addAll({"Authorization": "Bearer $security"});
    }

    options.headers = headers;

    super.onRequest(options, handler);
  }
}
