import 'package:flutter/material.dart';

class ShippingOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01252D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Shipping Options',
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
            _buildShippingOption(context, 'Email to Me'),
            SizedBox(height: 16),
            _buildShippingOption(context, 'Email to Them'),
            SizedBox(height: 16),
            _buildShippingOption(context, 'Ship It'),
          ],
        ),
      ),
    );
  }

  Widget _buildShippingOption(BuildContext context, String title) {
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
              onPressed: () {},
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
