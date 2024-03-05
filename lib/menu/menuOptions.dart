import 'package:flutter/material.dart';
import 'package:seesafeproject/menu/about_us.dart';
import 'package:seesafeproject/menu/emergency_call.dart';
import 'package:seesafeproject/menu/history.dart';
import 'package:seesafeproject/menu/feedback.dart';
import 'package:seesafeproject/menu/privacy_policy.dart';
import 'package:seesafeproject/menu/settings.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      child: ListView(
        children: [
          _buildListTile(
            icon: Icons.history,
            text: 'History',
            onTap: () => _navigateToScreen(context, const History()),
          ),
          _buildListTile(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () => _navigateToScreen(context, const Settings()),
          ),
          _buildListTile(
            icon: Icons.feedback,
            text: 'Feedback',
            onTap: () => _navigateToScreen(context, const FeedBack()),
          ),
          _buildListTile(
            icon: Icons.privacy_tip,
            text: 'Privacy Policy',
            onTap: () => _navigateToScreen(context, const PrivacyPolicy()),
          ),
          _buildListTile(
            icon: Icons.person,
            text: 'About Us',
            onTap: () => _navigateToScreen(context, const AboutUs()),
          ),
          _buildListTile(
            icon: Icons.call,
            text: 'Emergency Call',
            onTap: () => _navigateToScreen(context, const EmergencyCall()),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onTap: onTap,
    );
  }

  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.of(context).pop(); // Close the drawer
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
