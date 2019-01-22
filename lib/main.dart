import 'package:flutter/material.dart';
import 'package:yime2_mock_ui/src/screens/login.dart';
import 'src/supporting_files//colors.dart';

AppColors c = AppColors();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: c.lightGrey,
      ),
      home: Login()
    );
  }
}



