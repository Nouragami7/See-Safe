import 'package:flutter/material.dart';
import 'dart:async';

import 'package:seesafeproject/stepsRecognation/run.dart'; // Import dart:async for Future.delayed

class Walk extends StatefulWidget {
  const Walk({Key? key}) : super(key: key);

  @override
  State<Walk> createState() => _WalkState();
}

class _WalkState extends State<Walk> {
  @override
  void initState() {
    super.initState();
    // Navigate to Run page after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Run()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 168, 170), // Setting background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.directions_walk, // Icon of a person walking
              size: 160, // Adjust the size of the icon as needed
              color: Color.fromARGB(255, 26, 26, 26), // Color of the icon
            ),
            SizedBox(height: 20), // Adding space between the icon and text
            Text(
              'Please walk at a steady and normal pace to help the application recognize your typical steps.',
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


