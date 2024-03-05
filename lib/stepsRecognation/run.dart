import 'package:flutter/material.dart';
import 'dart:async';
import 'package:seesafeproject/stepsRecognation/climb.dart';

class Run extends StatefulWidget {
  const Run({Key? key}) : super(key: key);

  @override
  State<Run> createState() => _RunState();
}

class _RunState extends State<Run> {
  @override
  void initState() {
    super.initState();
    // Delayed navigation to Climb screen after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Climb()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 165, 168, 170), // Setting background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.directions_run_rounded, // Icon of a person walking
              size: 160, // Adjust the size of the icon as needed
              color: Color.fromARGB(255, 26, 26, 26), // Color of the icon
            ),
            SizedBox(height: 20), // Adding space between the icon and text
            Text(
              'Please run to witness the efficiency of your every stride',
              textAlign: TextAlign.center, // Aligning text to the center
              style: TextStyle(
                color: Color.fromARGB(255, 26, 26, 26), // Color of the icon
                fontWeight: FontWeight.bold,
                fontSize: 15, // Making text bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}

