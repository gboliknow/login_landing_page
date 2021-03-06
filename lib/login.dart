import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Text(
          "Welcome to your",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF212121),
            height: 2,
          ),
        ),

        Text(
          "IMAGINATION",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color(0xFF212121),
            letterSpacing: 2,
            height: 1,
          ),
        ),

        Text(
          "Please sign in to continue",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF212121),
            height: 1,
          ),
        ),

        SizedBox(
          height: 16,
        ),

        TextFormField(
          validator:(value){
           if(value.isEmpty || !value.contains('@')){
             return 'Please enter a valid email address';
           }
           return null;
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person,color: Colors.white,),
            hintText: 'Email / Username',
            hintStyle: TextStyle(
              fontSize: 16,
              color: Color(0xFFFFFFFF),
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
         
            fillColor: Color(0xFF212121),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          ),
        ),

        SizedBox(
          height: 16,
        ),

        TextField(

          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye,color: Colors.white,),
           
             prefixIcon: Icon(Icons.lock,color: Colors.white,),
            hintText: 'Password',  
            hintStyle: TextStyle(
              fontSize: 16,
              color: Color(0xFFFFFFFF),
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
            fillColor: Color(0xFF212121),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            
          ),
          
        ),

        SizedBox(
          height: 24,
        ),

        Container(
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFF212121),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF212121).withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child:  Center(
            child: Text(
              "SIGN IN",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 16,
        ),

        Text(
          "FORGOT PASSWORD?",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF212121),
            height: 1,
          ),
        ),

      ],
    );
  }
}