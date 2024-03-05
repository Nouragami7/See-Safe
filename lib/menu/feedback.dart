import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

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
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFDCEEFD),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 380,
                  height: 260,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/circle.png'),
                      ),
                      Text(
                        'If you have any feedback \n or suggestions about the \napplication, please feel\n free to contact us at\n SeeSafe@gmail.com.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2EA8ED),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
