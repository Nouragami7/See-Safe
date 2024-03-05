import 'package:flutter/material.dart';

class OutdoorOptions extends StatefulWidget {
  const OutdoorOptions({super.key});

  @override
  State<OutdoorOptions> createState() => _OutdoorOptionsState();
}

class _OutdoorOptionsState extends State<OutdoorOptions> {
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
            _buildButton('Walk', () {
              print('Walk');
            }),
            const SizedBox(height: 40),
            _buildButton('Specific place', () {
              print('Specific place');
            }),
           
          ],
        ),
      ),
       bottomNavigationBar: const BottomAppBar(
        color: Color(0xFF2EA8ED),
        height: 60,
        child: SizedBox(
          height: 20, // Adjust the height as needed
          child: Center(
            child: Text(
              'Outdoor',
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
