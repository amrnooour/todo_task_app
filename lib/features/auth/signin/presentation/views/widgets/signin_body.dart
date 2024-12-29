import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/shared_widget/custom_button.dart';
import 'package:todo_app/core/shared_widget/custom_image.dart';
import 'package:todo_app/core/theme/app_styles.dart';
import 'package:todo_app/features/auth/signin/presentation/cubit/signin_cubit.dart';
import 'package:todo_app/features/auth/signin/presentation/cubit/signin_states.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/custom_phone_text_field.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/donot_have_an_account.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/password_text_field.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    SigninCubit cubit = context.read();
    return SingleChildScrollView(
      child: BlocConsumer<SigninCubit,SigninStates>(
        listener: (context, state) {
          if (state is SuccessSignin) {
                  //customReplacementNavigate(context, RoutesNames.home);
                  const Text("Success");
                } else if (state is FailureSignin) {
                  var snackbar = SnackBar(                    
                    content: Text(state.errorMessage),
                    behavior: SnackBarBehavior.floating,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
        },
        builder: (context, state) {
          return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomImage(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Login",style: AppStyles.blackSize24Weight700),
            ),
            const SizedBox(height: 24,),
            CustomPhoneTextField(controller: cubit.phone,),
            const SizedBox(height: 20,),
            PasswordTextField(controller: cubit.password,),
            const SizedBox(height: 24,),
            state is LoadingSignin?const Center(child: CircularProgressIndicator(),) 
            :CustomButton(
              onTap: (){
                cubit.login();
              },
              widget: const Text("Sign in",style: AppStyles.whiteSize19Weight700,)),
            const SizedBox(height: 24,),
            const DonotHaveAnAccount()
          ],
        );
        },
      ),
    );
  }
}