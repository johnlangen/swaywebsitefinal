// page to sign up for an account

import 'package:flutter/material.dart';
import 'account_creation_page.dart'; // Import AccountCreationPage

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Sign Up'),
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
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: Color(0xFFFFF7E3)),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                style: TextStyle(color: Color(0xFFFFF7E3)),
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: TextStyle(color: Color(0xFFFFF7E3)),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                style: TextStyle(color: Color(0xFFFFF7E3)),
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Color(0xFFFFF7E3)),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountCreationPage(),
                    ),
                  );
                },
                child: Text('Next'),
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
