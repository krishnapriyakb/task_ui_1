import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:task_ui_1/constants/colorConstants.dart';

class Trans_limit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: ColorConstant.white)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Transaction Limit",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              "A free limit upto which you will receive the online payments directly in your bank",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 10),
            LinearProgressBar(
              maxSteps: 6,
              progressType: LinearProgressBar.progressTypeLinear,
              // Use Linear progress
              currentStep: 3,
              progressColor: ColorConstant.blue,
              backgroundColor: ColorConstant.white,
            ),
            SizedBox(height: 10),
            Text('36668 left out of ₹50000',
                style: TextStyle(
                  fontSize: 12,
                )
                //style: TextStyle(color: ColorConstant.black),
                ),
            SizedBox(height: 10),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: ColorConstant.blue),
              onPressed: () {},
              child: Text("Increase Limit", style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
