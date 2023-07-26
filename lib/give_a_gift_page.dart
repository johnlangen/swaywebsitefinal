import 'package:flutter/material.dart';

class GiveAGiftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01252D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Give a Gift',
          style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 24),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFFFFF7E3),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'What gift would you like to give?',
              style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 20),
            ),
            SizedBox(height: 16),
            _buildGiftOption(context, 'Spavia Dollars', '/spaviaBucks'),
            SizedBox(height: 16),
            _buildGiftOption(context, 'Give a Membership', '/giveMembership'),
            SizedBox(height: 16),
            _buildGiftOption(context, 'Give a Massage', '/giveMassage'),
            SizedBox(height: 16),
            _buildGiftOption(context, 'Give a Facial', '/giveFacial'),
          ],
        ),
      ),
    );
  }

  Widget _buildGiftOption(BuildContext context, String title, String route) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFf1f1f1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF01252D),
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, route);
              },
              child: Text('Select'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF01252D)),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFf1f1f1)),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Color(0xFF000000)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
