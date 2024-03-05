import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildVerticalSpace(5),
            _buildText('Last Updated: [12/12/2023]',
                fontWeight: FontWeight.bold),
            _buildVerticalSpace(5),
            _buildText('Welcome to [SeeSafe]!', fontWeight: FontWeight.bold),
            _buildVerticalSpace(8),
            _buildText(
              'This Privacy Policy explains how SeeSafe ("we," "us," or "our") collects, uses, and protects your information when you use our mobile application SeeSafe.',
            ),
            _buildVerticalSpace(8),
            _buildSectionTitle('Information We Collect:'),
            _buildSubTitle('Personal Information', fontWeight: FontWeight.bold),
            _buildSubTitle('Camera and Microphone:',
                fontWeight: FontWeight.bold),
            _buildParagraph(
              'We may request access to your device camera and microphone for features such as object detection and voice interaction. The camera enhances your experience by detecting objects in your surroundings, while the microphone allows you to connect with the App, receive instructions, and provide voice commands.',
            ),
            _buildSubTitle('Gallery:', fontWeight: FontWeight.bold),
            _buildParagraph(
              'The App may request access to your device\'s gallery to extract text from images. This facilitates features like text recognition, improving the user experience. Any media files accessed by the App are stored locally on your device and are not transmitted to our servers unless required for specific features.',
            ),
            _buildSubTitle('GPS:', fontWeight: FontWeight.bold),
            _buildParagraph(
              'We may collect location information for navigation and personalized content. Your location data is used within the App and is not shared with third parties, except as required for specific functionalities, such as maps.',
            ),
            _buildSubTitle('Consent:', fontWeight: FontWeight.bold),
            _buildParagraph(
                'By using the App, you consent to the collection and use of your information as outlined in this Privacy Policy.'),
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
              'Privacy Policy',
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

  Widget _buildSectionTitle(String title) {
    return _buildText(title, fontWeight: FontWeight.bold);
  }

  Widget _buildSubTitle(String subTitle,
      {FontWeight fontWeight = FontWeight.normal}) {
    return _buildText(subTitle, fontWeight: fontWeight, fontSize: 14.0);
  }

  Widget _buildParagraph(String text) {
    return _buildText(text, fontSize: 10.5);
  }

  Widget _buildText(String text,
      {FontWeight fontWeight = FontWeight.normal, double fontSize = 12.0}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }

  Widget _buildVerticalSpace(double height) {
    return SizedBox(height: height);
  }
}
