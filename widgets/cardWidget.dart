import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';
import 'package:true_card/widgets/elevatedButton.dart';

class Cardwidget extends StatefulWidget {

  final String image;
  final String cardName;
  final String category;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final String point1;
  final String point2;
  final String point3;
  final String annualFee;
  final String joinFee;
  final String applyLink;


  const Cardwidget({super.key, required this.image, required this.cardName, required this.category, required this.point1, required this.point2, required this.point3, required this.annualFee, required this.joinFee, required this.applyLink, required this.icon1, required this.icon2, required this.icon3});

  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.greyBackground,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.subFontGrey,width: 1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black54,width: 1),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Image.asset(widget.image,height: 60,width: 60,fit: BoxFit.contain,),
          ),
          SizedBox(height: 10,),
          Text(widget.cardName, style: TextStyle(fontSize: 22,color: AppColors.fontBlack,fontWeight: FontWeight.bold)),
          Text(widget.category, style: TextStyle(fontSize: 16,color: AppColors.subFontGrey,fontWeight: FontWeight.bold)),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(widget.icon1,size: 20,color: AppColors.adminBackground,),
              SizedBox(width: 10,),
              Text(widget.point1, style: TextStyle(fontSize: 18,color: AppColors.fontBlack,fontWeight: FontWeight.w500)),
            ],
          ),
          Row(
            children: [
              Icon(widget.icon2,size: 20,color: AppColors.adminBackground,),
              SizedBox(width: 10,),
              Text(widget.point2, style: TextStyle(fontSize: 18,color: AppColors.fontBlack,fontWeight: FontWeight.w500)),
            ],
          ),
          Row(
            children: [
              Icon(widget.icon3,size: 20,color: AppColors.adminBackground,),
              SizedBox(width: 10,),
              Text(widget.point3, style: TextStyle(fontSize: 18,color: AppColors.fontBlack,fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Annual Fee", style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.subFontGrey,fontSize: 20)),
                  Text("₹ ${widget.annualFee}", style: TextStyle(fontWeight: FontWeight.w600,color: AppColors.fontBlack,fontSize: 16))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Joining Fee", style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.subFontGrey,fontSize: 20)),
                  Text("₹ ${widget.joinFee}", style: TextStyle(fontWeight: FontWeight.w600,color: AppColors.fontBlack,fontSize: 16))
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          elevatedButton(onPressed: (){}, title: "Apply Now")


        ],
      ),
    );
  }
}
