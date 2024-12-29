import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/auth/signup/data/repos/signup_repo.dart';
import 'package:todo_app/features/auth/signup/presentation/cubit/signup_states.dart';

class SignupCubit extends Cubit<SignupStates>{
  final SignupRepo signupRepo;
  SignupCubit(this.signupRepo) : super(InialSignupStates());

  String? selectedValue;
  TextEditingController phone= TextEditingController();
  TextEditingController password= TextEditingController();
  TextEditingController name = TextEditingController();

  changeDropDownButton(String newValue){
    selectedValue = newValue;
    emit(ChandeDropDownButton());
  }

  register() async{
    emit(LoadingSignupStates());
    final response = await signupRepo.register(phone.text, password.text, name.text);
    response.fold((error)=>emit(FailureSignupStates(errorMessage: error))
    ,(success)=>emit(SuccessSignupStates()));
  }
}