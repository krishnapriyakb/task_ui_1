import 'package:flutter/material.dart';

import '../constants/colorConstants.dart';

class Chips extends StatelessWidget {
  const Chips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 30,
          width: 100,
          child: Center(
            child: Text("On hold", style: TextStyle(color: Colors.grey)),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.blue,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 30,
          width: 100,
          child: Center(
            child: Text("Payouts(15)", style: TextStyle(color: Colors.white)),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 30,
          width: 100,
          child: Center(
            child: Text("Refunds", style: TextStyle(color: Colors.grey)),
          ),
        ),
      ],
    );
  }
}
