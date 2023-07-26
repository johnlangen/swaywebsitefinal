import 'package:flutter/material.dart';
import 'finish_account_setup.dart'; // Import FinishAccountSetupPage

class AccountCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Create Account'),
      ),
      backgroundColor: Color(0xFF01252D),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: TextStyle(color: Color(0xFFFFF7E3)),
                decoration: InputDecoration(
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
              SizedBox(height: 10.0),
              TextField(
                style: TextStyle(color: Color(0xFFFFF7E3)),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
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
                  // Navigate to the FinishAccountSetupPage after the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FinishAccountSetupPage()),
                  );
                },
                child: Text('Create Account'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFFF7E3)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF01252D)),
                ),
              ),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'By clicking Create Account, I agree to the Terms of Use Agreement.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
