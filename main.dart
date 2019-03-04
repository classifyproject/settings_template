import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

double sqrSize = 30.0;
bool notifVal_1 = true;
bool notifVal_2 = false;
bool notifVal_3 = false;
bool notifVal_4 = false;
bool notifVal_5 = false;
bool notifVal_6 = false;
bool notifVal_7 = false;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
        home: new HomeState()
      //MaterialApp is the initial state
    );
  }
}

class HomeState extends StatefulWidget{
  @override
  HomeScreen createState() => new HomeScreen();
}

class HomeScreen extends State<HomeState> {


  TextSpan themeText = new TextSpan(
    text: "Theme",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 23
    )
  );


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
                      onTap: (){},
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
                              onTap: (){},
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
                                onTap: () {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProfileState()),);
                                },
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => NotifState()));
                                },
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => AboutState()));
                                },
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
                    top: 40,
                    child: Container(
                      child: Text.rich(
                        themeText
                      ),
                    ),
                  ),

                  Positioned.fill(
                    child: Stack(
                      children: <Widget>[

                        Positioned(
                          height: 60,
                          width: 60,
                          child: InkWell(
                              borderRadius: BorderRadius.circular(1000),
                              onTap: () {},
                          ),
                        )
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


class ProfileState extends StatefulWidget{
  @override
  ProfileScreen createState() => new ProfileScreen();
}

class ProfileScreen extends State<ProfileState>{
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
                      onTap: (){},
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
                                    onTap: () {
                                      Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => HomeState()));
                                    },
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
                                onTap: (){},
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => NotifState()));
                                },
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => AboutState()));
                                },
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

          ],
        ),
      ),
    );
  }
}


class NotifState extends StatefulWidget{
  @override
  NotifScreen createState() => new NotifScreen();
}

class NotifScreen extends State<NotifState>{


  TextSpan notifText_1 = new TextSpan(
      text: "Display Notifications",
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 23
      )
  );

  TextSpan notifText_2 = new TextSpan(
      text: "Reminders",
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.bold,
          fontSize: 21
      )
  );

  TextSpan notifText_3 = new TextSpan(
      text: "Homework",
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.bold,
          fontSize: 21
      )
  );

  TextSpan notifText_4 = new TextSpan(
      text: "Events",
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.bold,
          fontSize: 21
      )
  );

  TextSpan notifText_5 = new TextSpan(
      text: "Expansion",
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.bold,
          fontSize: 21
      )
  );

  TextSpan notifText_6 = new TextSpan(
      text: "Lessons",
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.bold,
          fontSize: 21
      )
  );

  TextSpan notifText_7 = new TextSpan(
      text: "Quizzes",
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.bold,
          fontSize: 21
      )
  );

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
                      onTap: (){},
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomeState()));
                                    },
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ProfileState()));
                                },
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
                                onTap: (){},
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => AboutState()));
                                },
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
              top: 180,
              left: 20,
              width: 412,
              height: 330,
              child: Column(
                children: <Widget>[

                  Expanded(
                    child: Stack(
                      children: <Widget>[

                        Positioned(
                          left: 0,
                          top: 10,
                          child: Container(
                            child: Text.rich(
                                notifText_1
                            ),
                          )
                        ),

                         Positioned(
                           right: 40,
                           top: 0,
                           child: Container(
                               child: Switch(
                                 activeColor: Colors.blue,
                                 activeTrackColor: Colors.grey,
                                 inactiveTrackColor: Colors.grey,
                                 inactiveThumbColor: Colors.red,
                                 value: notifVal_1,
                                 onChanged: (bool newValue) {
                                   setState(() {
                                      notifVal_1 = newValue;
                                    });
                                  },
                               )
                           )
                         ),

                     ],
                   )
                  ),

                  Expanded(
                      child: Stack(
                        children: <Widget>[

                          Positioned(
                              left: 0,
                              top: 10,
                              child: Container(
                                child: Text.rich(
                                    notifText_2
                                ),
                              )
                          ),

                          Positioned(
                              right: 40,
                              top: 0,
                              child: Container(
                                  child: Switch(
                                    activeColor: Colors.blue,
                                    activeTrackColor: Colors.grey,
                                    inactiveTrackColor: Colors.grey,
                                    inactiveThumbColor: Colors.red,
                                    value: notifVal_2,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        notifVal_2 = newValue;
                                      });
                                    },
                                  )
                              )
                          ),

                        ],
                      )
                  ),

                  Expanded(
                      child: Stack(
                        children: <Widget>[

                          Positioned(
                              left: 0,
                              top: 10,
                              child: Container(
                                child: Text.rich(
                                    notifText_3
                                ),
                              )
                          ),

                          Positioned(
                              right: 40,
                              top: 0,
                              child: Container(
                                  child: Switch(
                                    activeColor: Colors.blue,
                                    activeTrackColor: Colors.grey,
                                    inactiveTrackColor: Colors.grey,
                                    inactiveThumbColor: Colors.red,
                                    value: notifVal_3,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        notifVal_3 = newValue;
                                      });
                                    },
                                  )
                              )
                          ),

                        ],
                      )
                  ),

                  Expanded(
                      child: Stack(
                        children: <Widget>[

                          Positioned(
                              left: 0,
                              top: 10,
                              child: Container(
                                child: Text.rich(
                                    notifText_4
                                ),
                              )
                          ),

                          Positioned(
                              right: 40,
                              top: 0,
                              child: Container(
                                  child: Switch(
                                    activeColor: Colors.blue,
                                    activeTrackColor: Colors.grey,
                                    inactiveTrackColor: Colors.grey,
                                    inactiveThumbColor: Colors.red,
                                    value: notifVal_4,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        notifVal_4 = newValue;
                                      });
                                    },
                                  )
                              )
                          ),

                        ],
                      )
                  ),

                  Expanded(
                      child: Stack(
                        children: <Widget>[

                          Positioned(
                              left: 0,
                              top: 10,
                              child: Container(
                                child: Text.rich(
                                    notifText_5
                                ),
                              )
                          ),

                          Positioned(
                              right: 40,
                              top: 0,
                              child: Container(
                                  child: Switch(
                                    activeColor: Colors.blue,
                                    activeTrackColor: Colors.grey,
                                    inactiveTrackColor: Colors.grey,
                                    inactiveThumbColor: Colors.red,
                                    value: notifVal_5,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        notifVal_5 = newValue;
                                      });
                                    },
                                  )
                              )
                          ),

                        ],
                      )
                  ),

                  Expanded(
                      child: Stack(
                        children: <Widget>[

                          Positioned(
                              left: 0,
                              top: 10,
                              child: Container(
                                child: Text.rich(
                                    notifText_6
                                ),
                              )
                          ),

                          Positioned(
                              right: 40,
                              top: 0,
                              child: Container(
                                  child: Switch(
                                    activeColor: Colors.blue,
                                    activeTrackColor: Colors.grey,
                                    inactiveTrackColor: Colors.grey,
                                    inactiveThumbColor: Colors.red,
                                    value: notifVal_6,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        notifVal_6 = newValue;
                                      });
                                    },
                                  )
                              )
                          ),

                        ],
                      )
                  ),

                  Expanded(
                      child: Stack(
                        children: <Widget>[

                          Positioned(
                              left: 0,
                              top: 10,
                              child: Container(
                                child: Text.rich(
                                    notifText_7
                                ),
                              )
                          ),

                          Positioned(
                              right: 40,
                              top: 0,
                              child: Container(
                                  child: Switch(
                                    activeColor: Colors.blue,
                                    activeTrackColor: Colors.grey,
                                    inactiveTrackColor: Colors.grey,
                                    inactiveThumbColor: Colors.red,
                                    value: notifVal_7,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        notifVal_7 = newValue;
                                      });
                                    },
                                  )
                              )
                          ),

                        ],
                      )
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


class AboutState extends StatefulWidget{
  @override
  AboutScreen createState() => new AboutScreen();
}

class AboutScreen extends State<AboutState>{
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
                      onTap: (){},
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomeState()));
                                    },
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ProfileState()));
                                },
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => NotifState()));
                                },
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
                                onTap: (){},

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

          ],
        ),
      ),
    );
  }
}
