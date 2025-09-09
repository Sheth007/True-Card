import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';

class SelectCat extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;

  const SelectCat({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(8),
      width: 180,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: isSelected ? AppColors.adminBackground :  Colors.black38,
          width: isSelected ? 3 : 1,
        ),
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
              color: isSelected ? AppColors.adminBackground : Colors.black38,
            ),
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              color:isSelected ? AppColors.adminBackground :  AppColors.fontBlack,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 120,
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color:  isSelected ? AppColors.fontBlack : AppColors.subFontGrey,
                fontWeight:  isSelected ? FontWeight.w700 : FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
