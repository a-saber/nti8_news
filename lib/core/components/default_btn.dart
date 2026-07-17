import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class DefaultBtn extends StatelessWidget {
  const DefaultBtn({super.key, required this.text, required this.onTap});

  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 0,
              color: AppColors.primary
            )
          ]
        ),
        padding: EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        child: Text(text, style: TextStyle(
          color: AppColors.white,
          fontSize: 19,
          fontWeight: FontWeight.w300
        ),),
      ),
    );
  }
}
