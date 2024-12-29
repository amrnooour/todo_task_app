abstract class ApiConsumer {
  Future<dynamic> post(String path,
  {
    dynamic data,
    Map<String,dynamic>? queryParameter,
    Map<String,dynamic>? headers,
    });
}