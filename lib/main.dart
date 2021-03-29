import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagine_signup_signin/login.dart';
import 'package:imagine_signup_signin/login_option.dart';

import 'package:imagine_signup_signin/signup.dart';
import 'package:imagine_signup_signin/signup_option.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.muktaVaaniTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool login = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            GestureDetector(
              onTap: () {
                setState(() {
                  login = true;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1200),
                curve: Curves.bounceIn,
                height: login ? MediaQuery.of(context).size.height * 0.7 : MediaQuery.of(context).size.height * 0.3,
                child: CustomPaint(
                  painter: CurvePainter(login),
                   child: Container(
                    padding: EdgeInsets.only(bottom: login ? 0 : 45),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          child: login 
                          ? Login()
                          : LoginOption(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  login = false;
                });
              },
              child: AnimatedContainer(
                   duration: Duration(milliseconds: 1200),
                  curve: Curves.bounceOut,
                height: login ? MediaQuery.of(context).size.height * 0.3 : MediaQuery.of(context).size.height * 0.7,
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(top: login ? 45 : 0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        child: !login 
                        ? SignUp()
                        : SignUpOption(),
                      ),
                    ),
                  )
                ),    
              ),
            ),
            
        
          ],
        ),
      ),
    );
  }
}


class CurvePainter extends CustomPainter {

  bool outterCurve;

  CurvePainter(this.outterCurve);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFFFFFFFF);
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.conicTo(size.width * 0.5, outterCurve ? size.height + 110 : size.height - 110, size.width, size.height,45);
   // path.cubicTo(45, 90, 180, 215, 270, 360);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}