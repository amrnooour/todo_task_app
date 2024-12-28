import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/auth/signin/presentation/cubit/signin_states.dart';

class SigninCubit extends Cubit<SigninStates>{
  SigninCubit() : super(IinitialSignin());

  bool obscureText = true;

  changeObsecurePassword(){
    obscureText = !obscureText;
    emit(IsObsecure());
  }

}