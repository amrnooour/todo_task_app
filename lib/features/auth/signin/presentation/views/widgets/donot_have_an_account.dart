import 'package:flutter/material.dart';
import 'package:todo_app/core/router/navigation.dart';
import 'package:todo_app/core/router/routes_name.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/theme/app_styles.dart';

class DonotHaveAnAccount extends StatelessWidget {
  const DonotHaveAnAccount({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 58),
      child: Row(children: [
        Text("Didn’t have any account?  ",
        style: AppStyles.blackSize14Weight400.copyWith(color: Colors.grey),),
        TextButton(onPressed: (){
          customNavigation(context, RoutesName.signupRoute);
        }, child: Text("Sign Up here",
        style: AppStyles.blackSize14Weight400.copyWith(color: AppColors.primaryColor),))
      ],),
    );
  }
}