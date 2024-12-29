import 'package:dio/dio.dart';
import 'package:todo_app/core/errors/exception.dart';
import 'package:todo_app/core/services/api_consumer.dart';
import 'package:todo_app/core/services/end_points.dart';

class DioConsumer extends ApiConsumer{
  final Dio dio;
  DioConsumer({required this.dio}){
   dio.options.baseUrl = EndPoints.baseUrl;
  }
  @override
  Future post(String path, {data, Map<String, dynamic>? queryParameter, Map<String, dynamic>? headers}) async{
    try{
      final response = 
      await dio.post(path,data: data,queryParameters: queryParameter,options: Options(headers: headers));
      return response.data;
    }on DioException catch (e){
      handleDioExceptions(e);
    }
  }
}