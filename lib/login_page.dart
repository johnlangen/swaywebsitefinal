// page where you enter email and password, also forgot password and sign up options

import 'package:flutter/material.dart';
import 'reset_page.dart'; // Import ResetPasswordPage
import 'signup_page.dart'; // Import SignUpPage

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Log In'),
        leading: BackButton(
          // Updated this line
          color: Colors.white, // Update the color to fit your theme
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            },
            child: Text('Sign Up'),
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFFFFF7E3)),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF01252D),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 40.0), // Added padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: TextStyle(color: Color(0xFFFFF7E3)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF01252D),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Color(0xFFFFF7E3)),
                  border: UnderlineInputBorder(
                    // Change border style
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    // Change border style
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                style: TextStyle(color: Color(0xFFFFF7E3)),
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF01252D),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xFFFFF7E3)),
                  border: UnderlineInputBorder(
                    // Change border style
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    // Change border style
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResetPasswordPage()),
                  );
                },
                child: Text('Forgot Password?'),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFFF7E3)),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle login
                },
                child: Text('Log In'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFFF7E3)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF01252D)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
