import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';
import 'package:true_card/widgets/cardWidget.dart';
import 'package:true_card/widgets/elevatedButton.dart';

class Alternatehomescreen extends StatefulWidget {
  const Alternatehomescreen({super.key});

  @override
  State<Alternatehomescreen> createState() => _AlternatehomescreenState();
}

class _AlternatehomescreenState extends State<Alternatehomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackground,
      body:SafeArea(
        child: SingleChildScrollView(
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Shadow color
                            offset: Offset(0, 4), // x: 0, y: 4 → bottom only
                            blurRadius: 6, // Softness of shadow
                            spreadRadius: 1, // Extent of the shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.adminBackground,// Dark background similar to your image
                              borderRadius: BorderRadius.circular(12), // Rounded edges
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/credit_card.png', // Your white icon
                                width: 30, // Resize icon as needed
                                height: 30,
                                //color: Colors.white, // Ensure icon is white (optional if it's already white)
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("TrueCard", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28))

                        ],
                      )
                      ,
                    ),

                    //Upper Text

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),

                          Text("Welcome Back!", style: TextStyle(fontSize: 26,color: AppColors.fontBlack,fontWeight: FontWeight.w700)),
                          SizedBox(height: 10,),
                          Text("Based on your preferences, here are your personalized credit card recommendations.",textAlign: TextAlign.center, style: TextStyle(fontSize: 18,color:AppColors.subFontGrey,fontWeight: FontWeight.w500)),
                          SizedBox(height: 20,),
                          elevatedButton(onPressed: (){}, title: "Start New Selection Process"),
                          SizedBox(height: 20,),

                        ],
                      ),
                    ),

                    Container(
                      width: double.maxFinite,
                      color: Colors.white,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Past Matches", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
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


                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Why These Cards?",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 16),
                            bulletPoint("Match your travel spending category preferences"),
                            bulletPoint("Fit within your preferred annual fee range"),
                            bulletPoint("Offer competitive welcome bonuses"),
                          ],
                        ),
                      ),
                    ),


                    // copyright text

                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text("© 2025 TrueCard. All Rights Reserved.", style: TextStyle(fontSize: 15,color: AppColors.subFontGrey)),
                    )







                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
// Helper widget
Widget bulletPoint(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 3),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFF2E3A59),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.check, size: 16, color: Colors.white),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.fontBlack,
            ),
          ),
        ),
      ],
    ),
  );
}