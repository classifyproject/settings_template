import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './settingsAbout.dart' as about;
import './settingsNotifications.dart' as notifications;
import './settingsProfile.dart' as profile;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
        home: new HomeSetter()
      //MaterialApp is the initial state
    );
  }
}

class HomeSetter extends StatefulWidget{
  @override
  Home createState() => new Home();
}

class Home extends State<HomeSetter> with SingleTickerProviderStateMixin {

  double sqrSize = 30.0;

  TabController controller;
  TextSpan themeText = new TextSpan(
    text: "Theme",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 25
    )
  );

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[

            Positioned( //Top Section
              height: 150,
              top: 20,
              left: 0,
              width: 412,
              child: Stack(
                children: <Widget>[

                  Positioned(
                    height: 30,
                    width: 30,
                    top: 20,
                    left: 15,
                    child: InkWell(
                      onTap: null,
                      child: Image.asset('assets/backArrow.png'),
                    ),
                  ), // Back Arrow

                  Positioned( //Cog Icon
                      height: 30,
                      width: 30,
                      left: 190,
                      top: 20,
                      child: InkWell(
                        child: Image.asset('assets/cog3.png'),
                      )
                  ),

                  Positioned.fill(
                    top: 40,
                    child: Row(
                      children: <Widget>[

                        Expanded(
                        child: Container(
                            height: sqrSize,
                            width: sqrSize,
                          child: Opacity(
                            opacity: 0.5,
                            child: InkWell(
                              child: Image.asset('assets/house.png'),
                          )
                          )
                        ),
                        ),

                        Expanded(
                          child: Container(
                            height: sqrSize,
                            width: sqrSize,
                            child: Opacity(
                              opacity: 0.5,
                              child: InkWell(
                                child: Image.asset('assets/profileIcon.png'),
                            ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            height: sqrSize,
                            width: sqrSize,
                            child: Opacity(
                              opacity: 0.5,
                              child: InkWell(
                                child: Image.asset('assets/bellIcon.png'),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            height: sqrSize + 5,
                            width: sqrSize + 5,
                            child: Opacity(
                              opacity: 0.5,
                              child: InkWell(
                                child: Image.asset('assets/qMark.png'),
                             ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  )

               ],
             ),  //Top Section
            ),

            Positioned( // Body
              top: 150,
              width: 412,
              height: 300,
              child: Stack(
                children: <Widget>[

                  Positioned(
                    left: 20,
                    top: 50,
                    child: Container(
                      child: Text.rich(
                        themeText
                      ),
                    ),
                  ),

                  Positioned.fill(
                    child: Row(
                      children: <Widget>[

                        Expanded(
                          child: Container(
                            width: sqrSize,
                            height: sqrSize,
                            child: InkWell(
                                child: Image.asset("assets/circle.png"),
                              onTap: null,
                            ),
                          ),
                        ),

                        Expanded(
                            child: InkWell(
                                child: Container(
                                  width: sqrSize,
                                  height: sqrSize,
                                decoration: ShapeDecoration(
                                  color: Colors.green,
                                  shape: CircleBorder(
                                    
                                  )
                                ),
                                child: Image.asset("assets/circle.png")
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            width: sqrSize,
                            height: sqrSize,
                            child: InkWell(
                                child: Image.asset("assets/circle.png")
                            ),
                          ),
                        ),

                      ],
                    ),
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
