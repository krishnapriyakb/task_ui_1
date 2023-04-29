import 'package:flutter/material.dart';
import 'package:task_ui_1/Provider/progressProvider.dart';
import 'package:task_ui_1/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => progressProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homeScreen(),
      ),
    );
  }
}
