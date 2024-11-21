import 'package:flutter/material.dart';
import 'package:lavlook/opening/Intro_page3.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your destination for stylish and comfortable clothing.', style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center, ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => intropage3()));
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
