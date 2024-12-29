import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/router/navigation.dart';
import 'package:todo_app/core/router/routes_name.dart';
import 'package:todo_app/core/shared_widget/custom_button.dart';
import 'package:todo_app/core/shared_widget/custom_image.dart';
import 'package:todo_app/core/theme/app_styles.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/custom_phone_text_field.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/custom_text_field.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/password_text_field.dart';
import 'package:todo_app/features/auth/signup/presentation/cubit/signup_cubit.dart';
import 'package:todo_app/features/auth/signup/presentation/cubit/signup_states.dart';
import 'package:todo_app/features/auth/signup/presentation/views/widgets/already_have_an_account.dart';
import 'package:todo_app/features/auth/signup/presentation/views/widgets/custom_drop_button.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {

    SignupCubit cubit = context.read();
    var key = GlobalKey<FormState>();

    return SingleChildScrollView(
      child: Form(
        key: key,
        child: BlocConsumer<SignupCubit,SignupStates>(
          listener: (context, state) {
            if (state is SuccessSignupStates) {
                  customReplacementNavigation(context, RoutesName.home);
                  const Text("Success");
                } else if (state is FailureSignupStates) {
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
              const Center(child: CustomImage(h: .4,w: .8,fit: BoxFit.fill,)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text("Register",style: AppStyles.blackSize24Weight700,),
              ),
              const SizedBox(height: 24,),
              CustomTextField(hint: "Name",controller: cubit.name,),
              const SizedBox(height: 15,),
              CustomPhoneTextField(controller: cubit.phone,),
              const SizedBox(height: 15,),
              const CustomTextField(hint: "Years of Experinces"),
              const SizedBox(height: 15,),
              const CustomDropButton(),
              const SizedBox(height: 15,),
              const CustomTextField(hint: "address"),
              const SizedBox(height: 15,),
              PasswordTextField(controller: cubit.password,),
              const SizedBox(height: 24,),
              state is LoadingSignupStates?const Center(child: CircularProgressIndicator(),)  
              :CustomButton(
                onTap: (){
                  if(key.currentState!.validate()){
                    cubit.register();
                  }
                },
                widget: const Text("Sign up",style: AppStyles.whiteSize19Weight700,)),
              const SizedBox(height: 24,),
              const AlreadyHaveAnAccount()
            ],
          );
          },
        ),
      ),
    );
  }
}