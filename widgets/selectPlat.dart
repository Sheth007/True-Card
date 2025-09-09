import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';
import 'package:true_card/model/platformModel.dart';

class Selectplat extends StatefulWidget {
  Selectplat({super.key});

  @override
  State<Selectplat> createState() => _SelectplatState();
}

class _SelectplatState extends State<Selectplat> {

  List<PlatformItem> platforms = [
    PlatformItem(name: 'Zomato', description: 'Food delivery & dining', icon: Icons.restaurant),
    PlatformItem(name: 'Swiggy', description: 'Food delivery service', icon: Icons.motorcycle),
    PlatformItem(name: 'Uber Eats', description: 'Food delivery platform', icon: Icons.delivery_dining),
    PlatformItem(name: 'Domino\'s', description: 'Pizza delivery chain', icon: Icons.local_pizza),
    PlatformItem(name: 'McDonald\'s', description: 'Fast food restaurant', icon: Icons.fastfood),
    PlatformItem(name: 'KFC', description: 'Fried chicken chain', icon: Icons.set_meal),
    PlatformItem(name: 'Starbucks', description: 'Coffee & beverages', icon: Icons.local_cafe),
    PlatformItem(name: 'Local Restaurants', description: 'Neighborhood dining', icon: Icons.store),
    PlatformItem(name: 'Food Courts', description: 'Mall & plaza dining', icon: Icons.apartment),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: platforms.length,
        itemBuilder: (context, index) {
          final platform = platforms[index];
          return GestureDetector(
            onTap: (){
              setState(() {
                platform.isSelected = !platform.isSelected;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: platform.isSelected? AppColors.adminBackground : Colors.black38 ,width: 2)
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: platform.isSelected? AppColors.adminBackground:Colors.black54
                    ),
                      child: Icon(platform.icon,size: 30,color: Colors.white,)),
                  SizedBox(width: 12,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(platform.name, style: TextStyle(fontWeight: FontWeight.w500,color:platform.isSelected? AppColors.adminBackground: AppColors.fontBlack,fontSize: 18)),
                      SizedBox(height: 3,),
                      Text(platform.description, style: TextStyle(fontWeight: FontWeight.w500,color: platform.isSelected? AppColors.fontBlack : AppColors.subFontGrey,fontSize: 15)),

                    ],
                  ),
                  ),
                  Icon(
                    platform.isSelected? Icons.check_circle : Icons.radio_button_unchecked,
                      color: platform.isSelected? AppColors.adminBackground : Colors.black38
                  )
                ],
              ),
            ),
          );
        },);
  }
}
