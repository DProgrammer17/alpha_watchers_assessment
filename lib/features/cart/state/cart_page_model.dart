import 'package:app_watchers_assessment/features/cart/state/model/cart_model.dart';

class CartPageModel {
  final List<CartModel> cartList;
  final List<CartModel> favList;
  final double totalAmount;
  final double subTotalAmount;

  const CartPageModel({
    this.cartList = const [],
    this.favList = const [],
    this.totalAmount = 0,
    this.subTotalAmount = 0,
  });

  CartPageModel copyWith({
    List<CartModel>? cartList,
    List<CartModel>? favList,
    double? totalAmount,
    double? subTotalAmount,
  }){
    return CartPageModel(
      cartList: cartList ?? this.cartList,
      favList: favList ?? this.favList,
      totalAmount: totalAmount ?? this.totalAmount,
      subTotalAmount: subTotalAmount ?? this.subTotalAmount,
    );
  }
}