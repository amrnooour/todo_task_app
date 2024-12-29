import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/auth/signup/presentation/cubit/signup_cubit.dart';
import 'package:todo_app/features/auth/signup/presentation/cubit/signup_states.dart';

class CustomDropButton extends StatelessWidget {
  const CustomDropButton({super.key});

  @override
  Widget build(BuildContext context) {
    SignupCubit cubit = context.read();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocBuilder<SignupCubit,SignupStates>(
        builder: (context, state) {
          return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(.5)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: cubit.selectedValue,
                hint: const Text(
                  "  Choose experience Level",
                  style: TextStyle(color: Colors.black),
                ),
                isExpanded: true,
                underline: const SizedBox(),
                icon: const Icon(Icons.arrow_drop_down),
                items: <String>['  Beginner', '  Intermediate', '  Advanced']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  cubit.changeDropDownButton(newValue!);
                },
              ),
            );
        },
      ),
    );
  }
}