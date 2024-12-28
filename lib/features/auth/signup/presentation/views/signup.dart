import 'package:flutter/material.dart';
import 'package:todo_app/features/auth/signup/presentation/views/signup_body.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignupBody(),
    );
  }
}