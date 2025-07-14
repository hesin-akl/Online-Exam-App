import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final String? Function(String?)? validator;
    final void Function(String)? onChanged; 


  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.keyboardType,
    required this.textInputAction,

    this.obscureText = false,
    this.validator, this.onChanged,
    
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: textInputAction,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(labelText: label, hintText: hint),
      onChanged: onChanged,
    );
  }
}
