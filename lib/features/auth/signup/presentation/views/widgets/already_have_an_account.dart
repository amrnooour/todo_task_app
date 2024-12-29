import 'package:flutter/material.dart';
import 'package:todo_app/core/router/navigation.dart';
import 'package:todo_app/core/router/routes_name.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/theme/app_styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(children: [
        Text("Already have any account?  ",
        style: AppStyles.blackSize14Weight400.copyWith(color: Colors.grey),),
        TextButton(onPressed: (){
          customNavigation(context, RoutesName.signinRoute);
        }, child: Text("Sign in here",
        style: AppStyles.blackSize14Weight400.copyWith(color: AppColors.primaryColor),))
      ],),
    );
  }
}