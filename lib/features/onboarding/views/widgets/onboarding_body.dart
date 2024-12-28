import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/app_assets.dart';
import 'package:todo_app/core/router/navigation.dart';
import 'package:todo_app/core/router/routes_name.dart';
import 'package:todo_app/core/shared_widget/custom_button.dart';
import 'package:todo_app/core/shared_widget/custom_image.dart';
import 'package:todo_app/core/theme/app_styles.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 15,),
          const CustomImage(),
          const SizedBox(height: 24,),
          const Text("Task Management &",style: AppStyles.blackSize24Weight700,),
          const Text("To-Do List",style: AppStyles.blackSize24Weight700,),
          const SizedBox(height: 16,),
          const Text("This productive tool is designed to help\n you better manage your task\n project-wise conveniently!",
          style: AppStyles.blackSize14Weight400,textAlign: TextAlign.center,),
          const SizedBox(height: 32,),
          CustomButton(
            onTap: (){
              customReplacementNavigation(context, RoutesName.signinRoute);
            },
            widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text("Let’s Start",style: AppStyles.whiteSize19Weight700,),
            const SizedBox(width: 8,),
            Image.asset(AppAssets.startIcon)
          ],))
        ],
      ),
    );
  }
}