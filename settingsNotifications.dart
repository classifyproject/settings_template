import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Notifications extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        body: Container(
          child: Stack(
            children: <Widget>[

              Positioned.fill(
                child: Text("Notifications"),
              )

            ],
          ),
        )
    );
  }
}
