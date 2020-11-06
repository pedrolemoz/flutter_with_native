import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unicons/unicons.dart';

import '../../../core/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int percentage;

  @override
  void initState() {
    super.initState();
    _getBatteryLevel();
  }

  void _getBatteryLevel() async {
    var methodChannel = MethodChannel(kAppDomain);
    percentage = await methodChannel.invokeMethod(kGetBatteryLevel) as int;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter with Native'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(UniconsLine.battery_bolt, size: 100.0),
            SizedBox(width: 15.0),
            Text(
              '$percentage%',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
