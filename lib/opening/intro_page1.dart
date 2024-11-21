import 'package:flutter/material.dart';
import 'intro_page2.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to LavLook!', // Teks Selamat datang
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke IntroPage2
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroPage2()),
                );
              },
              child: Text('Next'), // Teks tombol
            ),
          ],
        ),
      ),
    );
  }
}
