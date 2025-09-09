import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';
import 'package:true_card/screens/personDetails.dart';
import 'package:true_card/widgets/elevatedButton.dart';
import 'package:true_card/widgets/homeNumbers.dart';
import 'package:true_card/widgets/homeProcess.dart';
import 'package:true_card/widgets/popularCategories.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.greyBackground,

      body: SafeArea(
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
                        SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.adminBackground
                          ),
                          child: Image.asset(
                            'assets/credit_card.png', // Your white icon
                            width: 40, // Resize icon as needed
                            height: 40,
                            //color: Colors.white, // Ensure icon is white (optional if it's already white)
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Find Your Perfect Credit Card", style: TextStyle(fontSize: 26,color: AppColors.fontBlack,fontWeight: FontWeight.w700)),
                        SizedBox(height: 10,),
                        Text("Discover credit cards tailored to your spending habits and financial goals.\nCompare rewards,rates and benefits in one place.",textAlign: TextAlign.center, style: TextStyle(fontSize: 18,color:AppColors.subFontGrey,fontWeight: FontWeight.w500)),
                        SizedBox(height: 20,),
                        elevatedButton(onPressed: (){}, title: "Get Started"),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Homenumbers(title: "500+", subTitle: "Credit Cards"),
                            Homenumbers(title: "50K+", subTitle: "Happy Users"),
                            Homenumbers(title: "4.8★", subTitle: "App Rating"),

                          ],
                        )
                        ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  //How it works

                  Container(
                    //width: double.maxFinite,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("How It Works", style: TextStyle(fontSize: 25,color: AppColors.fontBlack,fontWeight: FontWeight.w500)),
                        SizedBox(height: 20,),
                        Homeprocess(number: "1", title: "Tell Us About You", subTitle: "Share your spending habits and financial preferences"),
                        SizedBox(height: 20,),
                        Homeprocess(number: "2", title: "Get Matched", subTitle: "Our algorithm finds cards that maximize rewards"),
                        SizedBox(height: 20,),
                        Homeprocess(number: "3", title: "Apply Instantly", subTitle: "Apply for your chosen card with one click"),
                      ],
                    ),
                  ),

                  //Popular categories

                  SizedBox(height: 20,),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Align(alignment: Alignment.centerLeft,child: Text("Popular Categories", style: TextStyle(fontSize: 24,color: AppColors.fontBlack,fontWeight: FontWeight.w500),)),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Popularcategories(icon: Icons.travel_explore, title: "Travel", subtitle: "save on Flights and Hotels"),
                      Popularcategories(icon: Icons.dining_rounded, title: "Dinning", subtitle: "Save on Dinning out"),

                    ],
                  ),
                 SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Popularcategories(icon: Icons.local_grocery_store, title: "Groceries", subtitle: "Rewards on daily needs"),
                      Popularcategories(icon: Icons.list_alt_rounded, title: "Bill", subtitle: "Rewards on bill payments"),

                    ],
                  ),


                  // Start search


                  SizedBox(height: 20,),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color:  Colors.black, // dark background
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Ready to Find Your Card?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Join thousands of users who found\ntheir perfect credit card match',
                            style: TextStyle(
                              color: Color(0xFFD1D5DB), // light gray text
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          elevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDetails(),));
                          }, title: "Start Your Search")
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
      )


    );
  }
}
