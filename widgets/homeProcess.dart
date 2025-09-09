import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';

class Homeprocess extends StatelessWidget {

  String number;
  String title;
  String subTitle;
  Homeprocess({super.key, required this.number,required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
         width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.adminBackground,
          ),
          child: Text(number,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color:AppColors.fontBlack,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                subTitle,
                style: TextStyle(
                  color: AppColors.subFontGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
