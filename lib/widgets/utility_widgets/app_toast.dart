import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/utils/enums/snackbar_type.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/app_snackbar_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class AppMessages {
  static void showInfoMessage({
    required BuildContext context,
    required String message,
  }) => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.up,
      duration: Duration(milliseconds: 1000),
      backgroundColor: AppColors.primaryBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.ar)),
      padding: EdgeInsets.zero,
      margin: EdgeInsets.only(
        bottom: AppConstants.deviceHeight - 130.ah,
        left: 10.aw,
        right: 10.aw,
      ),
      behavior: SnackBarBehavior.floating,
      content: AppSnackBarTile(message: message, type: SnackBarType.info),
    ),
  );

  static void showSuccessMessage({
    required BuildContext context,
    required String message,
  }) => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.up,
      duration: Duration(milliseconds: 1000),
      backgroundColor: AppColors.onlineGreen,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.ar)),
      padding: EdgeInsets.zero,
      margin: EdgeInsets.only(
        bottom: AppConstants.deviceHeight - 130.ah,
        left: 10.aw,
        right: 10.aw,
      ),
      behavior: SnackBarBehavior.floating,
      content: AppSnackBarTile(message: message, type: SnackBarType.success),
    ),
  );

  static void showErrorMessage({
    required BuildContext context,
    required String message,
  }) => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.up,
      duration: Duration(milliseconds: 1000),
      backgroundColor: AppColors.failRed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.ar)),
      padding: EdgeInsets.zero,
      margin: EdgeInsets.only(
        bottom: AppConstants.deviceHeight - 130.ah,
        left: 10.aw,
        right: 10.aw,
      ),
      behavior: SnackBarBehavior.floating,
      content: AppSnackBarTile(message: message, type: SnackBarType.error),
    ),
  );
}
