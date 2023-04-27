import 'package:flutter/material.dart';

import '../../constants/colorConstants.dart';

class customWidget extends StatelessWidget {
  const customWidget({
    super.key,
    required this.leading,
    required this.trailing,
  });
  final String leading;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          leading,
          style: TextStyle(fontSize: 14, color: ColorConstant.black),
        ),
        Row(
          children: [
            Text(
              trailing,
              style: TextStyle(fontSize: 12, color: ColorConstant.white),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: ColorConstant.white,
            )
          ],
        )
      ]),
    );
  }
}
