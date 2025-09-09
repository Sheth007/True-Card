import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';

class elevatedButton extends StatefulWidget {
  
  VoidCallback onPressed;
  String title;
  elevatedButton({super.key,required this.onPressed, required this.title});


  @override
  State<elevatedButton> createState() => _elevatedButtonState();
}

class _elevatedButtonState extends State<elevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.adminBackground,
            padding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ))
          ),
    );
  }
}
