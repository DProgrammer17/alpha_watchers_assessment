import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/features/cart/state/cart_page_model.dart';
import 'package:app_watchers_assessment/features/cart/state/model/cart_model.dart';
import 'package:app_watchers_assessment/features/cart/ui/cart_page.dart';
import 'package:app_watchers_assessment/utils/extensions/navigation.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartNotifier = NotifierProvider<CartNotifier, CartPageModel>(() {
  return CartNotifier();
});

class CartNotifier extends Notifier<CartPageModel> {
  @override
  CartPageModel build() => CartPageModel();

  void addToCart({required BuildContext context, required CartModel item}) {
    List<CartModel> interimCart = state.cartList.toList();

    if (state.cartList.isEmpty ||
        !state.cartList.any((e) => e.productName.contains(item.productName))) {
      interimCart = interimCart.toList()..add(item);
      state = state.copyWith(cartList: interimCart.toList());
      totalAmount();
      AppMessages.showSuccessMessage(
        context: context,
        message: ErrorStrings.itemAddedToCart,
      );
      if (context.mounted) {
        Future.microtask(() => context.pushSuper(CartPage()));
      }
      return;
    }

    AppMessages.showErrorMessage(
      context: context,
      message: ErrorStrings.itemAlreadyInCart,
    );
    return;
  }

  void minusCart({required BuildContext context, required CartModel item}) {
    List<CartModel> interimCart = state.cartList.toList();

    if (!state.cartList.any((e) => e.productName.contains(item.productName))) {
      AppMessages.showErrorMessage(
        context: context,
        message: ErrorStrings.actionNotPossible,
      );
      return;
    }

    CartModel editModel = interimCart.firstWhere(
      (e) => e.productName == item.productName,
    );
    if ((int.parse(editModel.quantity) - 1) <= 0) {
      deleteFromCart(item: item);
      return;
    }

    CartModel updatedModel = CartModel(
      productName: editModel.productName,
      price: editModel.price,
      quantity: (int.parse(editModel.quantity) - 1).toString(),
      image: editModel.image,
    );
    interimCart = interimCart
      ..removeWhere((e) => e.productName.contains(item.productName));
    interimCart = interimCart.toList()..add(updatedModel);
    state = state.copyWith(cartList: interimCart);
    totalAmount();
    return;
  }

  void addCart({required CartModel item}) {
    List<CartModel> interimCart = state.cartList.toList();

    if (!state.cartList.any((e) => e.productName.contains(item.productName))) {
      interimCart = interimCart..toList().add(item);
      state = state.copyWith(cartList: interimCart);
      totalAmount();
      return;
    }

    CartModel editModel = interimCart.firstWhere(
      (e) => e.productName == item.productName,
    );

    CartModel updatedModel = CartModel(
      productName: editModel.productName,
      price: editModel.price,
      quantity: (int.parse(editModel.quantity) + 1).toString(),
      image: editModel.image,
    );

    interimCart = interimCart
      ..removeWhere((e) => e.productName.contains(item.productName));
    interimCart = interimCart.toList()..add(updatedModel);
    state = state.copyWith(cartList: interimCart);
    totalAmount();
    return;
  }

  void deleteFromCart({required CartModel item}) {
    List<CartModel> interimCart = state.cartList.toList();
    interimCart = interimCart
      ..removeWhere((e) => e.productName == item.productName);
    state = state.copyWith(cartList: interimCart);
    totalAmount();
  }

  void totalAmount() {
    List<CartModel> interimCart = state.cartList.toList();
    double total = 0;
    for (int i = 0; i < interimCart.length; i++) {
      total =
          total +
          (double.parse(interimCart.elementAt(i).price.replaceAll('\$', '')) *
              int.parse(interimCart.elementAt(i).quantity));
    }
    state = state.copyWith(
      subTotalAmount: total,
      totalAmount: state.cartList.isEmpty ? total : total + 10,
    );
  }

  void updateFavorites({required CartModel item}) {
    List<CartModel> interimFavorites = state.cartList.toList();

    if (state.favList.any((e) => e.productName.contains(item.productName))) {
      interimFavorites = interimFavorites..toList()..removeWhere((e) => e.productName == item.productName);
      state = state.copyWith(favList: interimFavorites);
      totalAmount();
      return;
    }

    interimFavorites = interimFavorites.toList()..add(item);
    state = state.copyWith(favList: interimFavorites);
    return;
  }
}
