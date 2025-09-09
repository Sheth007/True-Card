import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';
import 'package:true_card/screens/selectPlatforms.dart';
import 'package:true_card/widgets/commonHeader.dart';
import 'package:true_card/widgets/elevatedButton.dart';
import 'package:true_card/widgets/popularCategories.dart';
import 'package:true_card/widgets/selectCat.dart';
import 'package:true_card/widgets/stepProgress.dart';

class Selectcategories extends StatefulWidget {
  const Selectcategories({super.key});

  @override
  State<Selectcategories> createState() => _SelectcategoriesState();
}

class _SelectcategoriesState extends State<Selectcategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackground,
      body: SafeArea(
          child: SingleChildScrollView(

            //header

            child:  Column(

              children: [
               Commonheader(title: "Select Categories"),
                SizedBox(height:10,),

                //Step Progress

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stepprogress(count: "2", percentage: 67),
                ),
                SizedBox(height: 10,),

                //Basic details

                Container(
                  padding: EdgeInsets.all(15),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("What do you spend on most?", style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: AppColors.fontBlack)),
                      Text("Select the categories where you spend the most money. This helps us find cards with the best rewards for you.", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.subFontGrey)),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SelectCat(title: "Travel",icon: Icons.airplane_ticket,subtitle: "Flights &\n Hotels",isSelected: true,),
                          SelectCat(title: "Gas",icon: Icons.local_gas_station,subtitle: "Fuel &\n Stations",isSelected: false,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SelectCat(title: "Dinning",icon: Icons.food_bank_outlined,subtitle: "Restaurant & Food",isSelected: false,),
                          SelectCat(title: "Grocessary",icon: Icons.shopping_cart,subtitle: "Food & Essential",isSelected: false,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SelectCat(title: "E-commerce",icon: Icons.laptop,subtitle: "Online shopping & deals",isSelected: true,),
                          SelectCat(title: "Utilites",icon: Icons.flash_on_rounded,subtitle: "Bills &\n Services",isSelected: false,),
                        ],
                      )

                    ],
                  ),
                ),

                //secure text
                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_circle,size: 20,color: AppColors.subFontGrey,),
                      SizedBox(width: 10,),
                      Text("2 categories selected.", style: TextStyle(color: AppColors.subFontGrey,fontSize: 16,fontWeight: FontWeight.w500))

                    ],
                  ),
                ),

                //Continue button

                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      elevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Selectplatforms(),));
                      }, title: "Continue"),
                      SizedBox(height: 10,),
                      Text("Select atleast 1 category to continue", style: TextStyle(fontSize: 15,color: AppColors.subFontGrey,fontWeight: FontWeight.w500))
                    ],
                  ),
                )


              ],
            ),

          )
      ),
    );
  }
}
