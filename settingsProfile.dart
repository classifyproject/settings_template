import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Stack(
            children: <Widget>[

              Positioned.fill(
                child: Text("Profile"),
              )

            ],
          ),
        )
    );
  }
}
