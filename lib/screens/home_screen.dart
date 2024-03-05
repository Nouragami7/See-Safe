import 'package:flutter/material.dart';
import 'package:seesafeproject/menu/menuOptions.dart';
import 'package:seesafeproject/screens/details_screen.dart'; // import the page you want to navigate to

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tapCount = 0;

  void _handleTap() {
    setState(() {
      _tapCount++;
      if (_tapCount == 3) {
        // Navigate to another page when tapped 3 times
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Details()), // replace OtherPage() with the page you want to navigate to
        ).then((_) {
          // Reset tap count when returning from other page
          _tapCount = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuList(),
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
            child: GestureDetector(
              onTap: _handleTap,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 220,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/circle.png'),
                        ),
                        Text(
                          'Please tap 3 times\n to select between \n indoor/outdoor/text',
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
          ),
        ],
      ),
    );
  }
}
