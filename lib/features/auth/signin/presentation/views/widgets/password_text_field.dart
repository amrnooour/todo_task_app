import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/auth/signin/presentation/cubit/signin_cubit.dart';
import 'package:todo_app/features/auth/signin/presentation/cubit/signin_states.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController? controller;
  const PasswordTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigninCubit,SigninStates>(
      builder: (context, state) {
        SigninCubit cubit = context.read();
        return CustomTextField(
        hint: "password",
        controller: controller,
        obscureText: cubit.obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
              return 'Please enter a password';
            } else if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
        },
        suffixIcon: IconButton(
          onPressed: (){
             cubit.changeObsecurePassword();
          },
          icon: Icon(cubit.obscureText?Icons.visibility_off:Icons.visibility),
        )
        );
      },
    );
  }
}