import 'package:app_watchers_assessment/features/cart/ui/cart_details_page.dart';
import 'package:app_watchers_assessment/features/home/ui/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavModel{
  final int? currentIndex;
  final double navDy;
  final List<Widget> navPages;

  const BottomNavModel({
    this.currentIndex = 0,
    this.navDy = 1,
    this.navPages = const [
      HomePage(),
      CartDetailsPage(fromNavBar: true),
      SizedBox(),
      SizedBox(),
    ],
  });

  BottomNavModel copyWith({
    int? currentIndex,
    double? navDy,
    List<Widget>? navPages,
  }) {
    return BottomNavModel(
      currentIndex: currentIndex ?? this.currentIndex,
      navPages: navPages ?? this.navPages,
      navDy: navDy ?? this.navDy,
    );
  }
}