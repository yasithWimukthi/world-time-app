import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart/convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Text("Loading screen"),
    );
  }
}
