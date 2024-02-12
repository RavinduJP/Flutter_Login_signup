import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.validateMessage,
      required this.lableText,
      this.icon,
      required this.hintText,
      required this.isObsecureText,
      this.character});

  final String validateMessage;
  final String lableText;
  final IconData? icon;
  final String hintText;
  final bool isObsecureText;
  final String? character;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      obscuringCharacter: character!,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validateMessage;
        }
        return null;
      },
      decoration: InputDecoration(
        label: Text(lableText),
        prefixIcon: Icon(
          icon!,
          color: Colors.black.withOpacity(0.3),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black26,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black12, // Default border color
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black12, // Default border color
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
