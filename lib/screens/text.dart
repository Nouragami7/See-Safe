import 'package:flutter/material.dart';

class TextRec extends StatefulWidget {
  const TextRec( {super.key});

  @override
  State<TextRec> createState() => _TextRecState();
}

class _TextRecState extends State<TextRec> {
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
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF2EA8ED),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle gallery icon press
                  },
                  icon:
                      Icon(Icons.photo_library, color: Colors.white, size: 40),
                ),
                // Text(
                //   'Gallery',
                //   style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                // ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle document icon press
                  },
                  icon: Icon(Icons.description, color: Colors.white, size: 40),
                ),
                // Text(
                //   'Document',
                //   style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
