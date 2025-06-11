import 'package:app_watchers_assessment/core/constants/app_assets.dart';
import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:app_watchers_assessment/features/home/state/home_notifier.dart';
import 'package:app_watchers_assessment/features/home/widget/sale_item_tile.dart';
import 'package:app_watchers_assessment/utils/extensions/widget_extensions.dart';
import 'package:app_watchers_assessment/widgets/page_widgets/app_scaffold.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/app_text_field.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/back_nav_tile.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/empty_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeNotifier.notifier).setUpProductList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      appBar: EmptyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextfield(
            height: 43.ah,
            prefixIcon: Icon(CupertinoIcons.search),
            hintText: AppStrings.searchHint,
            hintStyle: AppTextStyles.body2RegularSans(
              context,
            ).copyWith(color: AppColors.textGrey),
            contentPadding: EdgeInsets.only(top: 25.ah),
          ),
          5.sbH,
          Divider(thickness: 1.aw, color: AppColors.textFieldGrey),
          BackNavTile(title: AppStrings.technology, onTap: () {}),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.aw),
              color: AppColors.backgroundGrey,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  25.sbH,
                  Text(
                    AppStrings.technologySubText,
                    style: AppTextStyles.h2Mono(
                      context,
                    ).copyWith(fontSize: 18.asp),
                  ),
                  25.sbH,
                  GridView.count(
                   shrinkWrap: true,
                    childAspectRatio: 0.65,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.ah,
                    mainAxisSpacing: 8.aw,
                    children: List.generate(
                      ref.watch(homeNotifier).productList.length,
                      (index) => SaleItemTile(
                        image: ref
                            .watch(homeNotifier)
                            .productList
                            .elementAt(index)
                            .image,
                        title: ref
                            .watch(homeNotifier)
                            .productList
                            .elementAt(index)
                            .title,
                        price: ref
                            .watch(homeNotifier)
                            .productList
                            .elementAt(index)
                            .price,
                      ),
                    ),
                  ),
                  35.sbH,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
