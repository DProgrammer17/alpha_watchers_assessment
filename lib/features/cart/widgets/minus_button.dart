import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class MinusButton extends StatelessWidget{
  final VoidCallback onTap;
  const MinusButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 36.ah,
        width: 36.aw,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.textFieldGrey,
        ),
        child: SizedBox(
          width: 13.33.aw,
          child: Divider(
            thickness: 2.aw,
            color: AppColors.neutralGrey,
          ),
        ),
      ),
    );
  }

}