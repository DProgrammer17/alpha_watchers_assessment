import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/features/bottom_nav/widgets/app_header.dart';
import 'package:app_watchers_assessment/features/cart/state/cart_notifier.dart';
import 'package:app_watchers_assessment/features/cart/state/model/cart_model.dart';
import 'package:app_watchers_assessment/features/cart/ui/cart_page.dart';
import 'package:app_watchers_assessment/features/home/widget/large_product_image_tile.dart';
import 'package:app_watchers_assessment/utils/extensions/navigation.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:app_watchers_assessment/widgets/page_widgets/app_scaffold.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/app_button.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/back_nav_tile.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/empty_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailsPage extends ConsumerWidget {
  final String image;
  final String title;
  final String price;
  final String info;
  const ProductDetailsPage({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.info,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      appBar: AppHeader(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            5.sbH,
            Divider(thickness: 1.aw, color: AppColors.textFieldGrey),
            3.sbH,
            BackNavTile(
              title: AppStrings.goBack,
              onTap: () => context.popSuper(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.aw),
              color: AppColors.backgroundGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.sbH,
                  LargeProductImageTile(
                    model: CartModel(
                      productName: title,
                      price: price,
                      quantity: "",
                      image: image,
                    ),
                  ),
                  11.sbH,
                  Text(
                    title.replaceAll("\n", " "),
                    style: AppTextStyles.body2RegularSans(
                      context,
                    ).copyWith(fontSize: 17.asp),
                  ),
                  12.sbH,
                  Text(
                    price,
                    style: AppTextStyles.h0Sans(
                      context,
                    ).copyWith(fontSize: 32.75.asp),
                  ),
                  15.sbH,
                  Text(
                    info,
                    style: AppTextStyles.body2RegularSans(
                      context,
                    ).copyWith(color: AppColors.textFieldGrey2),
                  ),
                  112.sbH,
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.aw),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton(
              onTap: () => ref
                  .watch(cartNotifier.notifier)
                  .addToCart(
                    context: context,
                    item: CartModel(
                      productName: title,
                      price: price,
                      quantity: "1",
                      image: image,
                    ),
                  ),
              title: AppStrings.addCart,
            ),
            32.sbH,
          ],
        ),
      ),
    );
  }
}
