import 'package:flutter/material.dart';

class PressurePage extends StatefulWidget {
  @override
  _PressurePageState createState() => _PressurePageState();
}

class _PressurePageState extends State<PressurePage> {
  String _pressure = "Medium";
  bool _isPregnant = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01252D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Pressure',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Choose your pressure level:',
              style: TextStyle(
                color: Color(0xFFFFF7E3),
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
              value: _pressure,
              dropdownColor: Color(0xFF123456),
              style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 18),
              items: <String>['Light', 'Medium', 'Firm', 'Deep Tissue']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _pressure = newValue!;
                });
              },
            ),
            SizedBox(height: 40.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Are you pregnant?",
                    style: TextStyle(
                      color: Color(0xFFFFF7E3),
                      fontSize: 18,
                    ),
                  ),
                ),
                Checkbox(
                  checkColor: Color(0xFF01252D),
                  activeColor: Color(0xFFFFF7E3),
                  value: _isPregnant,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isPregnant = newValue!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // Implement action
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
    );
  }
}
