import 'package:flutter/material.dart';

class EmergencyCall extends StatefulWidget {
  const EmergencyCall({Key? key});

  @override
  State<EmergencyCall> createState() => _EmergencyCallState();
}

class _EmergencyCallState extends State<EmergencyCall> {
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
            const Icon(
              Icons.call,
              size: 150,
              color: Colors.white, // Adjust color as needed
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 280,
              height: 112,
              child: ElevatedButton(
                onPressed: () {
                  // Implement action when the button is pressed
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF2EA8ED)), // Set button color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), 
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: const Text(
                    'Click to call your emergency number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white, 
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFF2EA8ED),
        height: 60,
        child: SizedBox(
          height: 20,
          child: Center(
            child: Text(
              'Emergency Call',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
