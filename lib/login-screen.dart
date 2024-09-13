import 'package:flutter/gestures.dart';
import 'package:scratcher/scratcher.dart';
import 'package:flutter/material.dart';
import 'SignupScreen.dart'; // Ensure this file exists
import 'HomePage.dart'; // Ensure this file exists or create it

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;

  void _login() {
    // Example credentials
    const validEmail = 'ali';
    const validPassword = '123';

    final email = _emailController.text;
    final password = _passwordController.text;

    if (email == validEmail && password == validPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      setState(() {
        _errorMessage = 'Wrong credentials. Please try again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/download.jpeg"),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
                child: TextFormField(
                  controller: _emailController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter email',
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mail, color: Colors.blueGrey),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: TextFormField(
                    controller: _passwordController,
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter password',
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.remove_red_eye_outlined, color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Button color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            if (_errorMessage != null)
              Scratcher(
                color: Colors.black.withOpacity(1),
                brushSize: 20,
                onChange: (value) {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Text(
                      _errorMessage!,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                       // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Do you already have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: "Sign up",
                    style: TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpscreen()),
                        );
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
