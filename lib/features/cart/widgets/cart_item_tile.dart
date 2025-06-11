import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/features/cart/state/cart_notifier.dart';
import 'package:app_watchers_assessment/features/cart/state/model/cart_model.dart';
import 'package:app_watchers_assessment/features/cart/widgets/delete_cart_item_button.dart';
import 'package:app_watchers_assessment/features/cart/widgets/minus_button.dart';
import 'package:app_watchers_assessment/features/cart/widgets/plus_button.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartItemTile extends ConsumerWidget {
  final CartModel model;
  const CartItemTile({super.key, required this.model});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(10.ar),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.ar),
        color: AppColors.neutralGrey2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(model.image, height: 106.15.ah, width: 108.87.aw),
          16.sbW,
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.productName,
                style: AppTextStyles.body1RegularSans(
                  context,
                ).copyWith(color: AppColors.textGrey2),
              ),
              3.sbH,
              Text(
                model.price,
                style: AppTextStyles.h3Sans(
                  context,
                ).copyWith(fontSize: 17.asp, color: AppColors.textGrey2),
              ),
              3.sbH,
              Text(
                AppStrings.inStock,
                style: AppTextStyles.h3Sans(
                  context,
                ).copyWith(fontSize: 17.asp, color: AppColors.onlineGreen),
              ),
              8.sbH,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MinusButton(
                    onTap: () => ref
                        .watch(cartNotifier.notifier)
                        .minusCart(context: context, item: model),
                  ),
                  22.sbW,
                  Text(
                    model.quantity,
                    style: AppTextStyles.body1RegularSans(
                      context,
                    ).copyWith(color: AppColors.textGrey2),
                  ),
                  22.sbW,
                  PlusButton(
                    onTap: () => ref
                        .watch(cartNotifier.notifier)
                        .addCart(item: model),
                  ),
                  40.13.sbW,
                  DeleteCartItemButton(  onTap: () => ref
                      .watch(cartNotifier.notifier)
                      .deleteFromCart(item: model),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
