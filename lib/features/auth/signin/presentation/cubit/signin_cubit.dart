import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/auth/signin/data/repos/signin_repo.dart';
import 'package:todo_app/features/auth/signin/presentation/cubit/signin_states.dart';

class SigninCubit extends Cubit<SigninStates>{
  final SigninRepo signinRepo;
  SigninCubit(this.signinRepo) : super(IinitialSignin());

  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  bool obscureText = true;

  changeObsecurePassword(){
    obscureText = !obscureText;
    emit(IsObsecure());
  }


  login() async{
    emit(LoadingSignin());
    final response = await signinRepo.login(phone.text, password.text);
    response.fold((error)=>emit(FailureSignin(errorMessage: error)), (success){
      emit(SuccessSignin());
    });
  }

}