import 'package:flutter/material.dart';
import 'package:lavlook/colors.dart';
import 'package:lavlook/home.dart'; // Pastikan file home.dart memiliki HomePage

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  // Variabel untuk mengatur jarak antara logo dan teks Log In
  double logoTextSpacing = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                // Logo
                Image.asset(
                  'assets/images/Lav.png', // Path ke gambar logo
                  height: 150,
                  width: 150, // Atur ukuran logo jika diperlukan
                ),
                SizedBox(height: logoTextSpacing), // Jarak antara logo dan teks Log In
                // Teks Log In
                Text(
                  'Log In',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            const SizedBox(height: 120.0),
            // [Username]
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            // [Password]
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 40.0),
            // [Button Bar]
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: [
                // Cancel Button
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                // Next Button
                ElevatedButton(
                  child: const Text('Next'),
                  onPressed: () {
                    // Navigasi ke HomePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: kShrineBrown900,
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Sudut melengkung
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

