import 'package:flutter/material.dart';
import '../login.dart';

class intropage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Start shopping at LavLook today!', style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}
