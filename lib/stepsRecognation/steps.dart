import 'package:flutter/material.dart';

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDCEEFD),
        centerTitle: true, // Center align the title
       title: SizedBox( // Use SizedBox to set the size of the title
       width: 100, // Adjust the width as needed
       height: 100, // Adjust the height as needed
        child: Image.asset(
          'assets/smallLogo.png',
         fit: BoxFit.contain, // Ensure the image fits within the SizedBox
    ),
  ),
      ),
      body: const Center(
        child: Text(
          'Please help us to know your steps pattern',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF0071B1),
            fontSize: 30, // Adjust the font size as needed
          ),
          textAlign: TextAlign.center,
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFF2EA8ED),
        height: 60,
        child: SizedBox(
          height: 30, // Adjust the height as needed
          child: Center(
            child: Text(
              'Your Steps',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20, // Adjust the font size as needed
              ),
            ),
          ),
        ),
      ),
    );
  }
}
