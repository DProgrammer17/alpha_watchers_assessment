import 'package:app_watchers_assessment/core/constants/app_assets.dart';
import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeleteCartItemButton extends StatelessWidget {
  final VoidCallback onTap;
  const DeleteCartItemButton({super.key, required this.onTap});

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
        child: SvgPicture.asset(SvgAssets.deleteIcon, height: 16.36.ah),
      ),
    );
  }
}
