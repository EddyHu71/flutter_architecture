abstract class INetworkService {
  Future<dynamic> getHttp(
      {required String path,
      String? parameter,
      Map<String, dynamic>? queryParameter,
      Map<String, dynamic>? header,
      bool useAuth = true});

  Future<dynamic> postHttp(
      {required String path,
      String? parameter,
      Map<String, dynamic>? queryParameter,
      dynamic content,
      String? contentType,
      Map<String, dynamic>? header,
      bool useAuth = true});

  Future<dynamic> putHttp(
      {required String path,
      String? parameter,
      Map<String, dynamic>? queryParameter,
      Map<String, dynamic>? content,
      String? contentType,
      Map<String, dynamic>? header,
      bool useAuth = true});

  Future<dynamic> download(
      {required String url,
      required String downloadPath,
      Map<String, dynamic>? queryParameter,
      Map<String, dynamic>? header,
      bool useAuth = true});
}
