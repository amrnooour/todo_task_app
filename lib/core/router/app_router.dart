import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/router/routes_name.dart';
import 'package:todo_app/core/services/dio_consumer.dart';
import 'package:todo_app/features/auth/signin/data/repos/signin_repo.dart';
import 'package:todo_app/features/auth/signin/presentation/cubit/signin_cubit.dart';
import 'package:todo_app/features/auth/signin/presentation/views/signin.dart';
import 'package:todo_app/features/auth/signup/data/repos/signup_repo.dart';
import 'package:todo_app/features/auth/signup/presentation/cubit/signup_cubit.dart';
import 'package:todo_app/features/auth/signup/presentation/views/signup.dart';
import 'package:todo_app/features/home/presentation/views/home.dart';
import 'package:todo_app/features/onboarding/views/onboarding.dart';
import 'package:todo_app/features/splash/splash.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/" , builder: (context, state) => const Splash(),),
  GoRoute(path: RoutesName.signinRoute , builder: (context, state) => 
  BlocProvider(
    create: (context) => SigninCubit(SigninRepo(dioConsumer: DioConsumer(dio: Dio()))),
    child: const Signin()),),
  GoRoute(path: RoutesName.onboardingRoute , builder: (context, state) => const Onboarding(),),
  GoRoute(path: RoutesName.signupRoute , builder: (context, state) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => SigninCubit(SigninRepo(dioConsumer: DioConsumer(dio: Dio()))),),
      BlocProvider(create: (context) => SignupCubit(SignupRepo(dioConsumer: DioConsumer(dio: Dio()))),)
    ],
    child: const Signup()),),

  GoRoute(path: RoutesName.home , builder: (context, state) => const Home(),),



]);