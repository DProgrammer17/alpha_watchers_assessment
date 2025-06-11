import 'package:app_watchers_assessment/core/constants/app_assets.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/features/home/state/home_model.dart';
import 'package:app_watchers_assessment/features/home/state/model/sales_listing_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeNotifier = NotifierProvider<HomeNotifier, HomeModel>(() {
  return HomeNotifier();
});

class HomeNotifier extends Notifier<HomeModel> {
  @override
  HomeModel build() => const HomeModel();

  void setUpProductList() => state = state.copyWith(
    productList: [
      SalesListingModel(
        image: ImageAssets.iPhoneImage,
        title: AppStrings.iphoneTitle,
        price: AppStrings.iphonePrice,
      ),
      SalesListingModel(
        image: ImageAssets.macBookImage,
        title: AppStrings.macBookTitle,
        price: AppStrings.macBookPrice,
      ),
      SalesListingModel(
        image: ImageAssets.pixelImage,
        title: AppStrings.pixelTitle,
        price: AppStrings.pixelPrice,
      ),
      SalesListingModel(
        image: ImageAssets.earBudsImage,
        title: AppStrings.airpodsTitle,
        price: AppStrings.airpodsPrice,
      ),
      SalesListingModel(
        image: ImageAssets.iPhoneImage,
        title: AppStrings.iphoneTitle,
        price: AppStrings.iphonePrice,
      ),
      SalesListingModel(
        image: ImageAssets.iPhoneImage,
        title: AppStrings.iphoneTitle,
        price: AppStrings.iphonePrice,
      ),
    ],
  );
}
