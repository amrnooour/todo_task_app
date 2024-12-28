import 'package:flutter/material.dart';
import 'package:todo_app/core/shared_widget/custom_button.dart';
import 'package:todo_app/core/shared_widget/custom_image.dart';
import 'package:todo_app/core/theme/app_styles.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/custom_phone_text_field.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/donot_have_an_account.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/password_text_field.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomImage(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text("Login",style: AppStyles.blackSize24Weight700),
          ),
          const SizedBox(height: 24,),
          const CustomPhoneTextField(),
          const SizedBox(height: 20,),
          PasswordTextField(),
          const SizedBox(height: 24,),
          const CustomButton(widget: Text("Sign in",style: AppStyles.whiteSize19Weight700,)),
          const SizedBox(height: 24,),
          const DonotHaveAnAccount()
        ],
      ),
    );
  }
}