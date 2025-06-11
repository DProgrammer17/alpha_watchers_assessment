import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class BackNavTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const BackNavTile({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: AppColors.neutralWhite,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.ah, horizontal: 10.aw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.chevron_left_sharp,
                    color: AppColors.neutralGrey,
                    size: 20.ar,
                  ),
                  12.sbW,
                  Text(
                    title,
                    style: AppTextStyles.h1Sans(context).copyWith(fontSize: 18.asp),
                  ),
                ],
              ),
            ),
            9.sbH,
            Divider(
              height: 1.ah,
              thickness: 1.aw,
              color: AppColors.textFieldGrey,
            ),
          ],
        ),
      ),
    );
  }
}
