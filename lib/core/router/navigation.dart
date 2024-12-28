import 'package:go_router/go_router.dart';

void customNavigation(context,String path,{Object? object}){
  GoRouter.of(context).push(path,extra: object);
}

void customReplacementNavigation(context,String path){
  GoRouter.of(context).pushReplacement(path);
}