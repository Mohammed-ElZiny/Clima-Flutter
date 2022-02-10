import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
Future <Position> location;

  void getLocation async(){
    Future<Position> position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
    setState((){
      location = position;
    });
  }
  init
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("you location : ${location.toString}")
      ),
    );
  }
}
