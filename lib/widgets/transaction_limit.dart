import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:provider/provider.dart';
import 'package:task_ui_1/Provider/progressProvider.dart';
import 'package:task_ui_1/constants/colorConstants.dart';
import 'package:task_ui_1/widgets/customWidget/transactionLimit_alert.dart';

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
            Consumer(
              builder: (BuildContext context, value, Widget? child) {
                return LinearProgressBar(
                  maxSteps: 50000,
                  progressType: LinearProgressBar.progressTypeLinear,
                  // Use Linear progress
                  currentStep: Provider.of<progressProvider>(context).progress,
                  progressColor: ColorConstant.blue,
                  backgroundColor: ColorConstant.white,
                );
              },
            ),
            const SizedBox(height: 10),
            Text(
                '${Provider.of<progressProvider>(context).progress} left out of ₹50000',
                style: TextStyle(
                  fontSize: 12,
                )),
            SizedBox(height: 10),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: ColorConstant.blue),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return transLimit_box();
                    });
              },
              child: Text("Increase Limit", style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
