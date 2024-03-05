import 'package:flutter/material.dart';

class Outdoor extends StatefulWidget {
  const Outdoor({super.key});

  @override
  State<Outdoor> createState() => _OutdoorState();
}

class _OutdoorState extends State<Outdoor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCEEFD),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDCEEFD),
        title: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/smallLogo.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.mic,
            size: 100,
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20),
          Text(
            'Please enter your destination',
            style: TextStyle(
              color: Color(0xFF2EA8ED),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          )
        ],
      )),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFF2EA8ED),
        height: 60,
        child: SizedBox(
          height: 20, // Adjust the height as needed
          child: Center(
            child: Text(
              'Feedback',
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
