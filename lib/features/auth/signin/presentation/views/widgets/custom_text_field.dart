import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  const CustomTextField({super.key, required this.hint, this.suffixIcon, this.controller,
   this.validator,this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey,fontSize: 12),
            suffixIcon: suffixIcon,
            suffixIconColor: Colors.grey.withOpacity(.5),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder()
          ),
          obscureText: obscureText,
          controller: controller,
          validator: validator,
      ),
    );
  }
  OutlineInputBorder buildBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(.4)));
  }
}