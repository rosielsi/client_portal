import 'dart:async';
import 'package:client_portal/login.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
  }

  starttimer() async {
    var dur = Duration(seconds: 2);
    return new Timer(dur, loginrout());
  }
  loginrout() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context)=>loginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return initwidget();
  }
}

initwidget() {
  return Scaffold(
    body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: new Color.fromRGBO(17, 145, 237, 1),
              gradient: LinearGradient(colors: [
                new Color.fromRGBO(42, 136, 203, 1),
                (new Color.fromRGBO(35, 87, 124, 1)),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Center(
          child: Container(
            child: Image.asset("images/logo.png"),
          ),
        )
      ],
    ),
  );
}
