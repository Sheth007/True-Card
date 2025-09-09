import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final String hint;
  final bool inputType;
  final TextEditingController controller;

  const CustomInputField({
    super.key,
    required this.label,
    required this.hint,
    required this.inputType,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.fontBlack,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          style: TextStyle(
            color: AppColors.adminBackground,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
          controller: controller,
          keyboardType: inputType?TextInputType.number:TextInputType.text,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),

            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.subFontGrey,width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.adminBackground, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
