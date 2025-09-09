import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';

class Homenumbers extends StatelessWidget {

  String title;
  String subTitle;
  Homenumbers({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
         title,
          style: TextStyle(
            color:AppColors.fontBlack,
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        Text(
         subTitle,
          style: TextStyle(
            color: AppColors.subFontGrey,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
