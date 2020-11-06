import 'package:flutter/material.dart';

import 'app/modules/home/home_page.dart';

void main() => runApp(FlutterNativeCall());

class FlutterNativeCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(primaryColor: Colors.red[900]),
      debugShowCheckedModeBanner: false,
      title: 'Flutter with Native',
      home: HomePage(),
    );
  }
}
