import 'dart:io';

import 'package:flutter/material.dart';
import 'package:seesafeproject/screens/outdoor_options.dart';
import 'package:seesafeproject/screens/text.dart';

class Details extends StatefulWidget {
  const Details({Key? key});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton('Indoor', () {
              print('Indoor');
            }),
            SizedBox(height: 18),
            _buildButton('Outdoor', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        OutdoorOptions()), // replace OtherPage() with the page you want to navigate to
              );
            }),
            SizedBox(height: 18),
            _buildButton('Text', () {
               Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const TextRec()), // replace OtherPage() with the page you want to navigate to
              );
              
            }),
            SizedBox(height: 18),
            _buildButton('Exit', () {
             exit(0);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return SizedBox(
      width: 200, // Set a fixed width for all buttons
      height: 50, // Set a fixed height for all buttons
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF2EA8ED)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
