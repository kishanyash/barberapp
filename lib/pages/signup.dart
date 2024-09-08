import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 30.0,),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF891635),
                    Color(0xff621d3c),
                    Color(0xFF311937)
                  ],
                ),
              ),
              child: Text(
                "Create your\nAccount",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0,bottom: 20.0),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 4),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                        color: Color(0xFF891635),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(height: 20.0),

                Text(
                  "Gmail",
                  style: TextStyle(
                      color: Color(0xFF891635),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Gmail",
                    prefixIcon: Icon(Icons.mail_outline),
                  ),
                ),
                  SizedBox(height: 20.0),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Color(0xFF891635),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password_outlined),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 30.0),

                  SizedBox(height: 40.0), // Add some space before the Sign In button
                  GestureDetector(
                    onTap: () {
                      // Add your sign-up logic here
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF891635),
                            Color(0xff621d3c),
                            Color(0xFF311937)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end ,
                    children: [
                      Text(
                        "Already have a account?",
                        style: TextStyle(
                            color: Color(0xFF311937),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end ,
                    children: [
                      Text(
                        "Sign in",
                        style: TextStyle(
                            color: Color(0xFF891635),
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
