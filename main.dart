import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
        home: SettingState()
      //MaterialApp is the initial state
    );
  }
}
class SettingState extends StatefulWidget {
  @override
  SettingPage createState() => new SettingPage();
}

class SettingPage extends State<SettingState> {
  bool ifPressed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Container(
        child: Stack(
          children: <Widget>[

            Positioned(
              left: 30,
              bottom: 800.0,
              child: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),

            Positioned(
              left: 30,
              bottom: 50,
              height: 50,
              width: 170,
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: (){
                  setState(() {
                    ifPressed = !ifPressed;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 8.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blueAccent[400],
                        Colors.blueAccent[400],
                        Colors.blueAccent[700],
                        Colors.blueAccent[700],
                      ],
                      stops: [0.25, 0.50, 0.75, 1],

                    ),
                    border: Border.all(

                        color: Colors.white,
                        width: ifPressed ? 3.0 : 0.0,
                    ),
                    borderRadius: BorderRadius.circular(35.0),


                  ),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,


                  ),


                ),
              ),
            ),
            ),


          ],
        ),
      ),

    );
  }
}
