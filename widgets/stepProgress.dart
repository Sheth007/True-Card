import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';

class Stepprogress extends StatefulWidget {

  String count;
  int percentage;
  Stepprogress({super.key, required this.count, required this.percentage});

  @override
  State<Stepprogress> createState() => _StepprogressState();
}

class _StepprogressState extends State<Stepprogress> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Step ${widget.count} of 3",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.fontBlack,
                fontSize: 16
              ),
            ),
            Text(
              "${widget.percentage.toString()}%",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.fontBlack
              ),
            )
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: widget.percentage/100,
            backgroundColor: Colors.black12,
            minHeight: 10,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.adminBackground),
          ),
        )
      ],
    );
  }
}
