import 'package:flutter/material.dart';
import 'pressure_page.dart'; // Make sure this is the correct path
import 'location.dart'; // Import Location class

class PricingPage extends StatefulWidget {
  final Location location;

  PricingPage({Key? key, required this.location}) : super(key: key);

  @override
  _PricingPageState createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {
  List<bool> _isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01252D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Location: ${widget.location.name}',
          style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 24),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFFFFF7E3),
          onPressed: () {
            Navigator.pop(context); // Go back to previous page
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ToggleButtons(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text('30 min', style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text('60 min', style: TextStyle(fontSize: 18)),
                ),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0;
                      buttonIndex < _isSelected.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      _isSelected[buttonIndex] = true;
                    } else {
                      _isSelected[buttonIndex] = false;
                    }
                  }
                });
              },
              isSelected: _isSelected,
              color: Colors.white,
              selectedColor: Color(0xFF01252D),
              fillColor: Color(0xFFFFF7E3),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  color: Color(0xFF123456),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          _isSelected[0] ? '\$85 monthly' : '\$115 monthly',
                          style:
                              TextStyle(color: Color(0xFFFFF7E3), fontSize: 24),
                        ),
                        Text(
                          'member',
                          style:
                              TextStyle(color: Color(0xFFFFF7E3), fontSize: 20),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PressurePage()),
                            );
                          },
                          child: Text('Sign Up'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFF7E3)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF01252D)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'OR',
                  style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 20),
                ),
                Card(
                  color: Color(0xFF123456),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          _isSelected[0] ? '\$109' : '\$129',
                          style:
                              TextStyle(color: Color(0xFFFFF7E3), fontSize: 24),
                        ),
                        Text(
                          'per visit',
                          style:
                              TextStyle(color: Color(0xFFFFF7E3), fontSize: 20),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PressurePage()),
                            );
                          },
                          child: Text('Book Now'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFF7E3)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF01252D)),
                          ),
                        ),
                      ],
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
