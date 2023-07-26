import 'package:flutter/material.dart';

class WaiverPage extends StatelessWidget {
  final Function onSigned;

  WaiverPage(this.onSigned);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Waiver', style: TextStyle(color: Color(0xFFFFF7E3))),
      ),
      backgroundColor: Color(0xFF01252D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'By signing below, I acknowledge that I have read and understand the above terms and conditions.',
              style: TextStyle(
                  color: Color(0xFFFFF7E3),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFF7E3), width: 2.0),
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // TODO: clear the signature
                  },
                  child: Text('Clear'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFFFF7E3)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF01252D)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // TODO: handle the signature submission
                    onSigned();
                    Navigator.pop(context, true);
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
          ],
        ),
      ),
    );
  }
}
