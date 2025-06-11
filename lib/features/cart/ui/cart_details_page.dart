import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/features/cart/state/cart_notifier.dart';
import 'package:app_watchers_assessment/features/cart/state/model/cart_model.dart';
import 'package:app_watchers_assessment/features/cart/widgets/cart_info_tile.dart';
import 'package:app_watchers_assessment/features/cart/widgets/cart_item_tile.dart';
import 'package:app_watchers_assessment/utils/extensions/navigation.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:app_watchers_assessment/widgets/page_widgets/app_scaffold.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/app_button.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/back_nav_tile.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/empty_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartDetailsPage extends ConsumerWidget {
  final bool fromNavBar;
  const CartDetailsPage({super.key, this.fromNavBar = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      appBar: EmptyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          5.sbH,
          Divider(thickness: 1.aw, color: AppColors.textFieldGrey),
          if (!fromNavBar) ...[
            3.sbH,
            BackNavTile(
              title: AppStrings.yourCart,
              onTap: () => context.popSuper(),
            ),
          ],
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.aw),
              color: AppColors.backgroundGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        ref.watch(cartNotifier).cartList.length,
                        (index) => CartItemTile(
                          model: CartModel(
                            productName: ref
                                .watch(cartNotifier)
                                .cartList
                                .elementAt(index)
                                .productName,
                            price: ref
                                .watch(cartNotifier)
                                .cartList
                                .elementAt(index)
                                .price,
                            quantity: ref
                                .watch(cartNotifier)
                                .cartList
                                .elementAt(index)
                                .quantity,
                            image: ref
                                .watch(cartNotifier)
                                .cartList
                                .elementAt(index)
                                .image,
                          ),
                        ),
                      ),
                    ),
                  ),
                  15.sbH,
                  Text(
                    AppStrings.orderInfo,
                    style: AppTextStyles.h0Sans(
                      context,
                    ).copyWith(fontSize: 14.asp),
                  ),
                  CartInfoTile(
                    title: AppStrings.subtotal,
                    info:
                        '\$${ref.watch(cartNotifier).subTotalAmount.toStringAsFixed(0)}',
                  ),
                  CartInfoTile(
                    title: AppStrings.shipping,
                    info:
                        '\$10',
                  ),
                  CartInfoTile(
                    title: AppStrings.total,
                    info:
                    '\$${ref.watch(cartNotifier).totalAmount.toStringAsFixed(0)}',
                    infoStyle: AppTextStyles.h0Sans(context).copyWith(
                      fontSize: 14.asp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.aw),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton(
              onTap: () {},
              title: AppStrings.checkout(ref.watch(cartNotifier).totalAmount),
            ),
            32.sbH,
          ],
        ),
      ),
    );
  }
}
