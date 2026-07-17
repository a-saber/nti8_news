import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({super.key, this.validator, required this.controller, this.obscureText = false ,this.suffixIcon, required this.hint, this.prefixPath});
  final String hint;
  final String? prefixPath;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscuringCharacter: '*',
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 14,
          color: AppColors.darkGery,
          fontWeight: FontWeight.w200,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.lightGery),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.lightGery),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixPath!= null?
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SvgPicture.asset(
            prefixPath!,
            height: 24,
            width: 24,
          ),
        ): null,
      ),
    );
  }
}
