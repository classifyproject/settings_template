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

  TabController controller;

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
      backgroundColor: Colors.grey[350],
      body: Container(
        child: Stack(
          children: <Widget>[

            Positioned( //Top Section
              height: 150,
              top: 10,
              left: 0,
              width: 412,
              child: Stack(
                children: <Widget>[

                  Positioned(
                    height: 30,
                    width: 30,
                    top: 20,
                    left: 10,
                    child: InkWell(
                      onTap: null,
                      child: Image.asset('assets/backArrow.png'),
                    ),
                  ), // Back Arrow

                  Positioned( //Cog Icon
                      height: 30,
                      width: 30,
                      left: 180,
                      top: 20,
                      child: InkWell(
                        child: Image.asset('assets/cog3.png'),
                      )
                  ),

                  Positioned.fill(
                    top: 60,
                    child: Scaffold(
                      appBar: new AppBar(
                          backgroundColor: Colors.grey[350],
                          elevation: 0,
                          bottom: TabBar(
                              controller: controller,
                              tabs: <Tab>[
                                Tab(icon: Image.asset('assets/house.png'),),
                                Tab(icon: Image.asset('assets/profileIcon.png'),),
                                Tab(icon: Image.asset('assets/bellIcon.png'),),
                                Tab(icon: Image.asset('assets/qMark.png'),),
                              ]
                          )
                      ),
                      body: new TabBarView(
                        controller: controller,
                          children: <Widget>[
                            new profile.Profile(),
                            new notifications.Notifications(),
                            new about.About(),
                          ]),
                    )
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
