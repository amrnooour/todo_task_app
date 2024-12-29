import 'package:dartz/dartz.dart';
import 'package:todo_app/core/errors/exception.dart';
import 'package:todo_app/core/services/dio_consumer.dart';
import 'package:todo_app/core/services/end_points.dart';
import 'package:todo_app/features/auth/signin/data/models/signin_model.dart';

class SignupRepo {
  final DioConsumer dioConsumer;
  SignupRepo({required this.dioConsumer});

  Future<Either> register(String phone,String password,String name) async{
    try{
      final response = await dioConsumer.post(EndPoints.register,data: {
        "phone" : "+20$phone",
        "password" : password,
        "displayName" : name
      });
      final user = SigninModel.fromJson(response);
      return right(user);
    }on ServerException catch(e){
      return left(e.errorModel.message);
    }
  }


}