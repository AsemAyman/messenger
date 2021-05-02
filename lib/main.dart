import 'package:flutter/material.dart';
import 'package:messenger/widgets/body_widget.dart';
import 'widgets/app_bar_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white,),
      debugShowCheckedModeBanner: false,
        home:Home());
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Theme.of(context).primaryColor),
      body: MyBody(context),
    );
  }
}

