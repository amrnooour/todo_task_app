import 'package:dartz/dartz.dart';
import 'package:todo_app/core/errors/exception.dart';
import 'package:todo_app/core/services/dio_consumer.dart';
import 'package:todo_app/core/services/end_points.dart';
import 'package:todo_app/features/auth/signin/data/models/signin_model.dart';

class SigninRepo {
  final DioConsumer dioConsumer;
  SigninRepo({required this.dioConsumer});

  Future<Either> login(String phone,String password) async{
    try{
      final response = await dioConsumer.post(EndPoints.login,data: {
        "phone" : "+20$phone",
        "password" : password
      });
      final user = SigninModel.fromJson(response);
      return right(user);
    }on ServerException catch(e){
      return left(e.errorModel.message);
    }
  }
}