import 'package:app_watchers_assessment/core/constants/app_assets.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {

  const AppHeader({super.key});

  @override
  Size get preferredSize =>  Size.fromHeight(60.ah);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 60.ah,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.aw),
        child: Image.asset(
          ImageAssets.fullLogoImage,
          height: 28.ah,
          width: 56.aw,
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 13.aw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.deliveryAddress,
              style: AppTextStyles.body3BoldSans(context),
            ),
            8.sbH,
            Text(
              AppStrings.umezike,
              style: AppTextStyles.body3BoldSans(context).copyWith(
                fontSize: 12.asp,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.aw),
          child: SvgPicture.asset(SvgAssets.notificationIcon),
        ),
      ],
    );
  }
}