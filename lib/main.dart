import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

import 'widgets/nixie_number.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Clock(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Clock extends StatefulWidget {
  const Clock({Key key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _now = DateTime.now();

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (v) {
      setState(() {
        _now = DateTime.now();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final hhmmss = DateFormat('Hms').format(_now).replaceAll(':', '').split('');

    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.black,
              width: size.width / 5,
              height: size.height * 2 / 3,
              child: NixieStack(str: hhmmss[0]),
            ),
            Container(
              color: Colors.black,
              width: size.width / 5,
              height: size.height * 2 / 3,
              child: NixieStack(str: hhmmss[1]),
            ),
            Container(
              color: Colors.black,
              width: size.width / 25,
              height: size.height * 2 / 3,
              child: Center(
                child: Text(':',
                    style: TextStyle(color: Colors.orange, fontSize: 100)),
              ),
            ),
            Container(
              color: Colors.black,
              width: size.width / 5,
              height: size.height * 2 / 3,
              child: NixieStack(str: hhmmss[2]),
            ),
            Container(
              color: Colors.black,
              width: size.width / 5,
              height: size.height * 2 / 3,
              child: NixieStack(str: hhmmss[3]),
            ),
            Container(
              color: Colors.black,
              width: size.width * 2 / 25,
              height: size.height / 3,
              child: NixieStack(str: hhmmss[4]),
            ),
            Container(
              color: Colors.black,
              width: size.width * 2 / 25,
              height: size.height / 3,
              child: NixieStack(str: hhmmss[5]),
            ),
          ],
        ),
      ),
    );
  }
}
