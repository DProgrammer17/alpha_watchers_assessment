import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/features/home/ui/product_details_page.dart';
import 'package:app_watchers_assessment/utils/extensions/navigation.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class SaleItemTile extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const SaleItemTile({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushSuper(
        ProductDetailsPage(
          image: image,
          title: title,
          price: price,
          info: AppStrings.iphoneInfo,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 162.ah,
            width: 162.aw,
            decoration: BoxDecoration(
              color: AppColors.neutralGrey,
              borderRadius: BorderRadius.circular(8.62.ar),
            ),
            child: Center(child: Image.asset(image, fit: BoxFit.cover)),
          ),
          6.sbH,
          Text(title, style: AppTextStyles.body2RegularSans(context)),
          6.sbH,
          Text(
            price,
            style: AppTextStyles.h1Mono(context).copyWith(fontSize: 16.asp),
          ),
        ],
      ),
    );
  }
}
