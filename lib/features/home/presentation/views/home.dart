import 'package:flutter/material.dart';
import 'package:todo_app/features/home/presentation/views/widgets/home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}