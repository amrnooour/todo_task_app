import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class CustomPhoneTextField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(PhoneNumber)? onChanged;
  const CustomPhoneTextField({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: IntlPhoneField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "123 456-7890",
          hintStyle: const TextStyle(color: Colors.grey,fontSize: 12),
          counterText: "",
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()
        ),
        initialCountryCode: "EG",
        languageCode: "Eg",
        flagsButtonMargin: const EdgeInsets.symmetric(horizontal: 10),
        dropdownIconPosition: IconPosition.trailing,
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

