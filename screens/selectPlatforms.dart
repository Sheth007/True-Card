import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';
import 'package:true_card/screens/recommendedCards.dart';
import 'package:true_card/widgets/commonHeader.dart';
import 'package:true_card/widgets/elevatedButton.dart';
import 'package:true_card/widgets/selectCat.dart';
import 'package:true_card/widgets/selectPlat.dart';
import 'package:true_card/widgets/stepProgress.dart';

class Selectplatforms extends StatefulWidget {
  const Selectplatforms({super.key});

  @override
  State<Selectplatforms> createState() => _SelectplatformsState();
}

class _SelectplatformsState extends State<Selectplatforms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackground,
      body: SafeArea(
          child: SingleChildScrollView(

            //header

            child:  Column(

              children: [
                Commonheader(title: "Platform Preferences"),

                SizedBox(height: 10,),
                //Step Progress

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stepprogress(count: "3", percentage: 100),
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
                      Text("Where do you order food from?", style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: AppColors.fontBlack)),
                      Text("Select the platforms and restaurants you use most frequently for dining and food delivery.", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.subFontGrey)),
                      SizedBox(height: 20,),
                      Selectplat()



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
                      Text("2 platforms selected.", style: TextStyle(color: AppColors.subFontGrey,fontSize: 16,fontWeight: FontWeight.w500)),

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Recommendedcards(),));
                      }, title: "Continue"),
                      SizedBox(height: 10,),
                      Text("Select atleast 1 platform to continue", style: TextStyle(fontSize: 15,color: AppColors.subFontGrey,fontWeight: FontWeight.w500))
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
