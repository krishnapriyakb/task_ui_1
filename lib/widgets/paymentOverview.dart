import 'package:flutter/material.dart';
import 'package:task_ui_1/constants/colorConstants.dart';

class paymentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Overview",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Life Time",
                    style: TextStyle(fontSize: 12, color: ColorConstant.white),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 12,
                    color: ColorConstant.white,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: ColorConstant.orange),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'AMOUNT ON HOLD',
                      style:
                          TextStyle(fontSize: 14, color: ColorConstant.white),
                    ),
                    Text(
                      '₹0',
                      style:
                          TextStyle(fontSize: 18, color: ColorConstant.white),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: ColorConstant.green),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'AMOUNT RECIEVED',
                      style:
                          TextStyle(fontSize: 14, color: ColorConstant.white),
                    ),
                    Text(
                      '₹13,332',
                      style:
                          TextStyle(fontSize: 18, color: ColorConstant.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
