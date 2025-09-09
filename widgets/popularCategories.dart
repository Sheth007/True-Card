
import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';

class Popularcategories extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;
  Popularcategories({super.key, required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.only(top: 10,bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
          border: Border.all(color: AppColors.subFontGrey,width: 0.5)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.adminBackground,
            ),
            child: Icon(icon,size: 30,color: Colors.white,),
          ),
          SizedBox(height: 15,),
          Text(
            title,
            style: TextStyle(
              color:AppColors.fontBlack,
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          SizedBox(
            width: 120,
            child: Text(
              subtitle,
              style: TextStyle(
                color: AppColors.subFontGrey,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
