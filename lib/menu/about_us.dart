import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final List<Map<String, String>> sections = [
    {
      'title': 'Introduction:',
      'content':
          'Welcome to See Safe, where innovation meets accessibility. Our mission is to empower and enrich the lives of blind individuals through cutting-edge technology. We believe in a world where everyone, regardless of visual ability, can navigate, connect, and engage seamlessly with the digital realm.',
    },
    {
      'title': 'Our Vision:',
      'content':
          'At See Safe, we envision a future where technology breaks down barriers, opening up a world of possibilities for the blind community. We are committed to creating inclusive solutions that foster independence, connectivity, and equal access to information.',
    },
    {
      'title': 'Who We Are:',
      'content':
          'We are a passionate team of five individuals dedicated to making a difference in the lives of the blind community.',
    },
    {
      'title': 'Join Us in Making a Difference:',
      'content':
          'We invite you to join the See Safe community and be a part of our mission. Download the app today and experience the future of accessible technology.',
    },
  ];

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
      body: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          final section = sections[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  section['title']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  section['content']!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(height: index == sections.length - 1 ? 8 : 10),
            ],
          );
        },
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFF2EA8ED),
        height: 60,
        child: SizedBox(
          height: 20,
          child: Center(
            child: Text(
              'About Us',
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
