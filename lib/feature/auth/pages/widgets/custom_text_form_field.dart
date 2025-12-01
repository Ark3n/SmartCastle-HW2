import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?, String hint)? validator;

  const CustomTextFromField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
      obscureText: obscureText,
      validator: validator == null
          ? null
          : (value) => validator!(value, hintText),
    );
  }
}
