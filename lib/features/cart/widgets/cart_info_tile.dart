import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_textstyles.dart';
import 'package:flutter/material.dart';

class CartInfoTile extends StatelessWidget {
  final String title;
  final String info;
  final TextStyle? infoStyle;
  const CartInfoTile({super.key, required this.title, required this.info, this.infoStyle,});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.symmetric(vertical: 7.5.ah),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text(
           title,
           style: AppTextStyles.h2Sans(context).copyWith(
             fontSize: 12.asp,
           ),
         ),
         Text(
           info,
           style: infoStyle ?? AppTextStyles.h2Sans(context).copyWith(
             fontSize: 12.asp,
           ),
         ),
       ],
     ),
   );
  }
}
