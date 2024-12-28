import 'package:flutter/material.dart';
import 'package:todo_app/core/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Widget widget;
  final void Function()? onTap;
  const CustomButton({super.key, required this.widget, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        decoration: const BoxDecoration(color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
            onTap: onTap,
            child: Center(child: widget)),
        ),
      ),
    );
  }
}