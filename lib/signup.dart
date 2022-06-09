import 'package:client_portal/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }


Widget initWidget() {
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
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
            child: Center(
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

                  //register Text Design
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Client Portal Register",
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

          //firstName

          Container(
            height: 50,
            margin: EdgeInsets.only(right: 20, left: 20, top: 60),
            padding: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: new Color.fromRGBO(17, 145, 237, 1),
                ),
                hintText: 'First Name',
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),

          //Last Name
          Container(
            height: 50,
            margin: EdgeInsets.only(right: 20, left: 20, top: 10),
            padding: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: new Color.fromRGBO(17, 145, 237, 1),
                ),
                hintText: 'Last Name',
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),

          //email
          Container(
            height: 50,
            margin: EdgeInsets.only(right: 20, left: 20, top: 10),
            padding: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: new Color.fromRGBO(17, 145, 237, 1),
                ),
                hintText: 'Email Address',
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),

          //password
          Container(
            height: 50,
            margin: EdgeInsets.only(right: 20, left: 20, top: 10),
            padding: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 4), blurRadius: 5, color: Colors.grey)
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              obscureText: true,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.password,
                  color: new Color.fromRGBO(17, 145, 237, 1),
                ),
                hintText: 'Password',
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),

          //password
          Container(
            height: 50,
            margin: EdgeInsets.only(right: 20, left: 20, top: 10),
            padding: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              obscureText: true,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.password,
                  color: new Color.fromRGBO(17, 145, 237, 1),
                ),
                hintText: 'Confirm Password',
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),

          //Register button
          GestureDetector(
            onTap: () => {
              //code
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
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Colors.grey),
                  ]),
              child: Text(
                "Register",
                style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                 GestureDetector(
                 child: Text(
                    " Go to LogIn",
                    style: TextStyle(
                      color: Color.fromRGBO(35, 87, 124, 1),
                    ),                 
                  ),
                  onTap: () => {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginPage()))
                    },
                )
              ],
            ),
          )
        ],
      ),
    ),
  );

}

}