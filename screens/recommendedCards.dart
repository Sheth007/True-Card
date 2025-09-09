import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';
import 'package:true_card/screens/alternateHomeScreen.dart';
import 'package:true_card/widgets/cardWidget.dart';
import 'package:true_card/widgets/commonHeader.dart';
import 'package:true_card/widgets/elevatedButton.dart';

class Recommendedcards extends StatefulWidget {
  const Recommendedcards({super.key});

  @override
  State<Recommendedcards> createState() => _RecommendedcardsState();
}

class _RecommendedcardsState extends State<Recommendedcards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackground,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Commonheader(title: "Recommended Cards"),
                //SizedBox(height: 10,),

                //Simple text
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text("Based on your preferences..", style: TextStyle(color: AppColors.subFontGrey,fontSize: 18,fontWeight: FontWeight.w500)),
                ),

                //Cards
                Container(
                  width: double.maxFinite,
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your Matches", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        SizedBox(height: 10,),

                        Cardwidget(
                            image: "assets/hdfc_bank.jpg",
                            cardName: "Hdfc Pixel",
                            category: "Dining & Cashback",
                            point1: "5x rewards on Zomato",
                            point2: "2x points on Swiggy",
                            point3: "1% cashback on Dinning",
                            annualFee: "500",
                            joinFee: "0",
                            applyLink: "",
                            icon1: Icons.restaurant,
                            icon2: Icons.motorcycle,
                            icon3: Icons.emoji_food_beverage),

                        SizedBox(height: 10,),
                        Cardwidget(
                            image: "assets/sbi_bank.jpg",
                            cardName: "SBI Cashback",
                            category: "Dining & Cashback",
                            point1: "3x rewards on Zomato",
                            point2: "5x points on Swiggy",
                            point3: "5% cashback on Dinning",
                            annualFee: "200",
                            joinFee: "0",
                            applyLink: "",
                            icon1: Icons.restaurant,
                            icon2: Icons.motorcycle,
                            icon3: Icons.emoji_food_beverage),


                      ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text("© 2025 TrueCard. All Rights Reserved.", style: TextStyle(fontSize: 15,color: AppColors.subFontGrey)),
                ),

                SizedBox(height: 20,),
                elevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Alternatehomescreen(),));
                }, title: "Just click don't take ss of this button")


              ],
            ),
          )
      ),
    );
  }
}
