import 'package:flutter/material.dart';
import 'package:seesafeproject/screens/home_screen.dart';

class Climb extends StatefulWidget {
  const Climb({super.key});

  @override
  State<Climb> createState() => _ClimbState();
}

class _ClimbState extends State<Climb> {
  @override
  void initState() {
    super.initState();
    // Delayed navigation to Climb screen after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:
          Color.fromARGB(255, 165, 168, 170), // Setting background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.stairs, // Icon of a person walking
              size: 160, // Adjust the size of the icon as needed
              color: Color.fromARGB(255, 26, 26, 26), // Color of the icon
            ),
            SizedBox(height: 20), // Adding space between the icon and text
            Text(
              'Please climb the stairs naturally to capture your climbing steps effortlessly.',
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
