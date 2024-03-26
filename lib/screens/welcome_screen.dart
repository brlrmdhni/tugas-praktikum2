import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/widgets/navbar_roots.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => NavBarRoots(),
                ));
              },
              child: Text(
                "SKIP",
                style: TextStyle(
                  color: Color(0xFF000080),
                  fontSize: 20,
                ),
              ),
            ),
            
            ),
            SizedBox(height:50),
            Padding(padding: EdgeInsets.all(20), child: Image.asset("images/illustration1.png"),
            ),
            SizedBox(height: 50),
            Text(
              "Welcome to",
            style: TextStyle(
              color: Color(0xFF000080),
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Mereun Healthcare",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              wordSpacing: 2,
             ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF000080),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(vertical:15, horizontal: 40),child: 
                    Text("Log In", style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                    ),
                  ),
                ),
                       Material(
                  color: Color(0xFF000080),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(vertical:15, horizontal: 40),child: 
                    Text("Sign Up", style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
     );
    } 
}