import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final IconData? suffixIcon;
  const CustomTextFormField({
    super.key,
    required this.icon,
    required this.hint,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        prefixIcon: Icon(
          icon,
          color: const Color.fromARGB(255, 4, 109, 58),
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 4, 109, 58),
        ),
        filled: true,
        fillColor: const Color.fromARGB(197, 158, 181, 185),
        constraints: const BoxConstraints(
          maxHeight: 60,
          maxWidth: 280,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
