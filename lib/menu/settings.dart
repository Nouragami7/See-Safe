import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFF2EA8ED),
        height: 60,
        child: SizedBox(
          height: 20, // Adjust the height as needed
          child: Center(
            child: Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20, // Adjust the font size as needed
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildSettingItem("Volume"),
          _buildSettingItem("Pitch"),
          _buildSettingItem("Speech Speed"),
          _buildSettingItem("Preferred Voice"),
          _buildSettingItem("Privacy Policy"),
        ],
      ),
    );
  }

  Widget _buildSettingItem(String text) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: ListTile(
            title: Text(
              text,
              style: const TextStyle(
                color: Color(0xFF0071B1),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const Divider(
          color: Color(0xFFADD8F0),
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
