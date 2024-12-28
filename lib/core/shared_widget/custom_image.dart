import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/app_assets.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Image.asset(AppAssets.loginImage,height: height*0.6,width: width);
  }
}