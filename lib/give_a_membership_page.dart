import 'package:flutter/material.dart';

class GiveAMembershipPage extends StatefulWidget {
  @override
  _GiveAMembershipPageState createState() => _GiveAMembershipPageState();
}

class _GiveAMembershipPageState extends State<GiveAMembershipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01252D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Give a Membership',
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
              'Gift a Membership',
              style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Membership Duration',
              style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 20),
            ),
            SizedBox(height: 16),
            _buildMembershipOption(context, '1 Month'),
            SizedBox(height: 16),
            _buildMembershipOption(context, '3 Months'),
            SizedBox(height: 16),
            _buildMembershipOption(context, '6 Months'),
          ],
        ),
      ),
    );
  }

  Widget _buildMembershipOption(BuildContext context, String title) {
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
                // TODO: Handle selection of this option
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
