import 'package:app_watchers_assessment/features/home/state/model/sales_listing_model.dart';

class HomeModel{
  final List<SalesListingModel> productList;

  const HomeModel({
    this.productList = const [],
  });

  HomeModel copyWith({
    List<SalesListingModel>? productList,
  }){
    return HomeModel(
      productList: productList ?? this.productList,
    );
  }
}