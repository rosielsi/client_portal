import 'package:client_portal/login.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class forgot extends StatefulWidget {
  forgot({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<forgot> {
  bool isHidePass = true;
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text("Forgot Password",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(35, 87, 124, 1),
              fontWeight: FontWeight.bold
            ),
            ),


            //User login email and password
            //
            //
            //            //Email

            Container(
              height: 70,
              margin: EdgeInsets.only(right: 20, left: 20, top: 30),
              padding: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5), blurRadius: 10, color: Colors.grey)
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email_rounded,
                    color: new Color.fromRGBO(17, 145, 237, 1),
                  ),
                  hintText: 'Enter Your Email',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),


            GestureDetector(
              onTap: () => {
                //code
              },
              child: Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 40),
                alignment: Alignment.center,
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(42, 136, 203, 1),
                      (Color.fromRGBO(35, 87, 124, 1)),
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Colors.grey),
                    ]),
                child: Text(
                  "Send Verification Code",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              margin: EdgeInsets.only(top: 20, left: 300),
              child: GestureDetector(
                child: Text(
                  "Back to login",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () => {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginPage()))
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}//end