import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/app_assets.dart';
import 'package:todo_app/core/router/navigation.dart';
import 'package:todo_app/core/router/routes_name.dart';
import 'package:todo_app/core/theme/app_colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    navigateToLogin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(child: Image.asset(AppAssets.splash),),
    );
  }

  navigateToLogin(){
    Future.delayed(const Duration(seconds: 3),(){
      customReplacementNavigation(context, RoutesName.onboardingRoute);
    });
  }
}