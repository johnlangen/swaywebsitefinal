// page to reset your password

import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Text('Reset Password', style: TextStyle(color: Color(0xFFFFF7E3))),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFFFFF7E3),
          onPressed: () =>
              Navigator.of(context).pop(), // Go back to previous page
        ),
      ),
      backgroundColor: Color(0xFF01252D),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter your email and we will send you a link to reset your password',
                style: TextStyle(color: Color(0xFFFFF7E3)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              TextField(
                style: TextStyle(color: Color(0xFFFFF7E3)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF01252D),
                  labelText: 'Email',
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
                  // Handle submit action
                },
                child: Text('Submit'),
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
