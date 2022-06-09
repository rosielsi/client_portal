import 'dart:html';

import 'package:client_portal/forgotpassword.dart';
import 'package:client_portal/index.dart';
import 'package:client_portal/signup.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<loginPage> {
  bool isHidePass = true;
  //Validation controller
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:[
            Container(
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5), blurRadius: 5, color: Colors.grey)
                  ],
                  color: new Color.fromRGBO(17, 145, 237, 1),
                  gradient: LinearGradient(colors: [
                    new Color.fromRGBO(42, 136, 203, 1),
                    (new Color.fromRGBO(35, 87, 124, 1)),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                  //set the icon
                  ),
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("images/logo1.png"),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(90),
                          topRight: Radius.circular(90),
                        ),
                      ),
                    ),

                    //Login Text Design
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Client Portal Login",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //User login email and password
            //
            //
            //            //Email

            Container(
              height: 70,
              margin: EdgeInsets.only(right: 20, left: 20, top: 60),
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
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: new Color.fromRGBO(17, 145, 237, 1),
                  ),
                  hintText: 'Your Email',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Email is empty";
                  } else {
                    return null;
                  }
                },
                onSaved: (String? email) {
                  _email = email as TextEditingController;
                },
              ),
            ),

            //password

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
                obscureText: isHidePass,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: new Color.fromRGBO(17, 145, 237, 1),
                  ),
                  hintText: 'Your password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isHidePass = !isHidePass;
                      });
                    },
                    child: isHidePass
                        ? const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              margin: EdgeInsets.only(top: 20, left: 300),
              child: GestureDetector(
                child: Text(
                  "Forgot password",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => forgot()))
                },
              ),
            ),

            //login button

            GestureDetector(
              
              onTap: () => {
                if(formkey.currentState!.validate()){
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => dashboard())),
                }
                else{
                    print("failed")
                }

              },
              child: Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 40),
                alignment: Alignment.center,
                height: 50,
                width: 200,
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
                  "LogIn",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            //register button

            GestureDetector(
              onTap: () => {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => SignUp())),
              },
              child: Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                alignment: Alignment.center,
                height: 50,
                width: 200,
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
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} //end
