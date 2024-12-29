import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/app_assets.dart';

class CustomImage extends StatelessWidget {
  final double h;
  final double w;
  final BoxFit? fit;


  const CustomImage({super.key, required this.h,this.fit, required this.w});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Image.asset(AppAssets.loginImage,height: height*h,width: width*w,fit: fit??BoxFit.none,);
  }
}