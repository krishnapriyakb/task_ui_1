import 'package:flutter/material.dart';
import 'package:task_ui_1/constants/colorConstants.dart';
import 'package:task_ui_1/widgets/chips.dart';
import 'package:task_ui_1/widgets/customWidget/customWidget.dart';
import 'package:task_ui_1/widgets/paymentOverview.dart';
import 'package:task_ui_1/widgets/transaction_limit.dart';

import '../widgets/TransactionList.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.blue,
        centerTitle: true,
        title: Text("Payments"),
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.info_outline)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Trans_limit(),
            SizedBox(
              height: 10,
            ),
            customWidget(
              leading: 'Default Method',
              trailing: 'Online Payment',
            ),
            SizedBox(
              height: 10,
            ),
            customWidget(
              leading: 'Payment Profile',
              trailing: 'Bank Account',
            ),
            Divider(),
            paymentView(),
            SizedBox(
              height: 10,
            ),
            Text(
              'Transactions',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Chips(),
            SizedBox(
              height: 10,
            ),
            TransactionList()
          ]),
        ),
      ),
    ));
  }
}
