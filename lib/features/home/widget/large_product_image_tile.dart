import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/features/cart/state/cart_notifier.dart';
import 'package:app_watchers_assessment/features/cart/state/model/cart_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LargeProductImageTile extends ConsumerWidget {
  final CartModel model;
  const LargeProductImageTile({super.key, required this.model});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Container(
          height: 331.ah,
          width: 334.aw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.ar),
            color: AppColors.neutralGrey,
          ),
          child: Image.asset(model.image, fit: BoxFit.cover),
        ),
        Positioned(
          top: 11.ah,
          right: 14.aw,
          child: InkWell(
            onTap: () =>
                ref.watch(cartNotifier.notifier).updateFavorites(item: model),
            child: Container(
              height: 44.ah,
              width: 44.aw,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.neutralWhite,
              ),
              child:
                  (ref.watch(cartNotifier).favList.isNotEmpty &&
                      ref
                          .watch(cartNotifier)
                          .favList
                          .any(
                            (e) => e.productName.contains(model.productName),
                          ))
                  ? Icon(
                      CupertinoIcons.heart_solid,
                      size: 27.ar,
                      color: AppColors.pink,
                    )
                  : Icon(
                      CupertinoIcons.heart,
                      size: 27.ar,
                      color: AppColors.textBlack,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
