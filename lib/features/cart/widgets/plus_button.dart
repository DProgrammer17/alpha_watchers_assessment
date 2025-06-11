import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget{
  final VoidCallback onTap;
  const PlusButton({super.key, required this.onTap});

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
          color: AppColors.neutralWhite,
        ),
        child: Icon(
          CupertinoIcons.plus,
          size: 22.ar,
          color: AppColors.textGrey2,
        ),
      ),
    );
  }

}