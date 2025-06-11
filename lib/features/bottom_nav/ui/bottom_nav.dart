import 'package:app_watchers_assessment/core/constants/app_assets.dart';
import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/features/bottom_nav/state/bottom_nav_notifier.dart';
import 'package:app_watchers_assessment/features/bottom_nav/widgets/app_header.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:app_watchers_assessment/widgets/page_widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends ConsumerStatefulWidget {
  final int? currentIndex;
  const BottomNav({super.key, this.currentIndex});

  @override
  ConsumerState<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends ConsumerState<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      appBar: AppHeader(),
      body: IndexedStack(
        index: ref.watch(bottomNavNotifier).currentIndex ?? 0,
        children: ref.watch(bottomNavNotifier).navPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ref.watch(bottomNavNotifier).currentIndex ?? 0,
        onTap: (index) => ref
            .watch(bottomNavNotifier.notifier)
            .updateNavIndex(widget.currentIndex ?? index),
        backgroundColor: AppColors.neutralWhite,
        elevation: 0,
        iconSize: 32.ar,
        selectedFontSize: 12.asp,
        unselectedFontSize: 12.asp,
        selectedItemColor: AppColors.primaryBlue,
        unselectedItemColor: AppColors.textBlack,
        selectedLabelStyle: AppTextStyles.body1RegularSans(context).copyWith(
          color: AppColors.primaryBlue,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: AppTextStyles.body1RegularSans(context),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              margin:  EdgeInsets.only(
              bottom: ref.watch(bottomNavNotifier).currentIndex == 0 ?  5.ah : 8.ah,
      ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.aw, vertical: ref.watch(bottomNavNotifier).currentIndex == 0 ?  5.ah : 8.ah,
              ),
              decoration: BoxDecoration(
                color: ref.watch(bottomNavNotifier).currentIndex == 0
                    ? AppColors.primaryBlue
                    : AppColors.neutralWhite,
                borderRadius: BorderRadius.circular(32.ar)
              ),
              child: Image.asset(
                ImageAssets.homeNavImage,
                height: ref.watch(bottomNavNotifier).currentIndex == 0
                    ? 26.ah
                    : 23.ah,
                color: ref.watch(bottomNavNotifier).currentIndex == 0
                    ? AppColors.neutralWhite
                    : AppColors.textBlack,
              ),
            ),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin:  EdgeInsets.only(
                bottom: ref.watch(bottomNavNotifier).currentIndex == 0 ?  5.ah : 8.ah,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.aw, vertical: ref.watch(bottomNavNotifier).currentIndex == 1 ?  5.ah : 8.ah,
              ),
              decoration: BoxDecoration(
                color: ref.watch(bottomNavNotifier).currentIndex == 1
                    ? AppColors.primaryBlue
                    : AppColors.neutralWhite,
                  borderRadius: BorderRadius.circular(32.ar)
              ),
              child: Image.asset(
                ImageAssets.cartNavImage,
                height: ref.watch(bottomNavNotifier).currentIndex == 1
                    ? 26.ah
                    : 23.ah,
                color: ref.watch(bottomNavNotifier).currentIndex == 1
                    ? AppColors.neutralWhite
                    : AppColors.textBlack,
              ),
            ),
            label: AppStrings.cart,
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin:  EdgeInsets.only(
                bottom: ref.watch(bottomNavNotifier).currentIndex == 0 ?  5.ah : 8.ah,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.aw, vertical: ref.watch(bottomNavNotifier).currentIndex == 2 ?  5.ah : 8.ah,
              ),
              decoration: BoxDecoration(
                color: ref.watch(bottomNavNotifier).currentIndex == 2
                    ? AppColors.primaryBlue
                    : AppColors.neutralWhite,
                  borderRadius: BorderRadius.circular(32.ar)
              ),
              child: Image.asset(
                ImageAssets.favNavImage,
                height: ref.watch(bottomNavNotifier).currentIndex == 2
                    ? 26.ah
                    : 23.ah,
                color: ref.watch(bottomNavNotifier).currentIndex == 2
                    ? AppColors.neutralWhite
                    : AppColors.textBlack,
              ),
            ),
            label: AppStrings.favorites,
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin:  EdgeInsets.only(
                bottom: ref.watch(bottomNavNotifier).currentIndex == 0 ?  5.ah : 8.ah,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.aw, vertical: ref.watch(bottomNavNotifier).currentIndex == 3 ?  5.ah : 8.ah,
              ),
              decoration: BoxDecoration(
                color: ref.watch(bottomNavNotifier).currentIndex == 3
                    ? AppColors.primaryBlue
                    : AppColors.neutralWhite,
                  borderRadius: BorderRadius.circular(32.ar)
              ),
              child: Image.asset(
                ImageAssets.profileNavImage,
                height: ref.watch(bottomNavNotifier).currentIndex == 3
                    ? 26.ah
                    : 23.ah,
                color: ref.watch(bottomNavNotifier).currentIndex == 3
                    ? AppColors.neutralWhite
                    : AppColors.textBlack,
              ),
            ),
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }
}
