import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Text(
          "Sign up with",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
            height: 2,
          ),
        ),

        Text(
          "IMAGINATION",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
            letterSpacing: 2,
            height: 1,
          ),
        ),

        SizedBox(
          height: 16,
        ),

        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person,color: Colors.black,),
            hintText: 'Enter Email / Username',
            hintStyle: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                width: 0, 
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            fillColor: Color(0xFFFFFFFF),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          ),
        ),

        SizedBox(
          height: 16,
        ),

        TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,),
             prefixIcon: Icon(Icons.lock,color: Colors.black,),
            

            

            hintText: 'Password',
            hintStyle: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                width: 0, 
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            fillColor: Color(0xFFFFFFFF),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          ),
        ),

        SizedBox(
          height: 24,
        ),

        Container(
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFFFFFFF).withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child:  Center(
            child: Text(
              "SIGN UP",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 24,
        ),

        Text(
          "Or Signup with",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
            height: 1,
          ),
        ),

        SizedBox(
          height: 16,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Icon(
              Entypo.facebook_with_circle,
              size: 32,
              color: Color(0xFFFFFFFF),
            ),

            SizedBox(
              width: 24,
            ),

            Icon(
              Entypo.google__with_circle,
              size: 32,
              color: Color(0xFFFFFFFF),
            ),

          ],
        )

      ],
    );
  }
}