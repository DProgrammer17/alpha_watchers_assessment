import 'package:app_watchers_assessment/features/bottom_nav/widgets/app_header.dart';
import 'package:app_watchers_assessment/features/cart/ui/cart_details_page.dart';
import 'package:app_watchers_assessment/widgets/page_widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      appBar: AppHeader(),
      body: CartDetailsPage(),
    );
  }
}
