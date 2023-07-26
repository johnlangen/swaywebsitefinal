import 'package:flutter/material.dart';

class FocusPage extends StatefulWidget {
  final bool waiverSigned;
  final bool preferencesSet;

  FocusPage({required this.waiverSigned, required this.preferencesSet});

  @override
  _FocusPageState createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  final categories = {
    'Calves': 'Normal',
    'Hamstrings': 'Normal',
    'Lower Back': 'Normal',
    'Upper Back': 'Normal',
    'Shoulders': 'Normal',
    'Neck': 'Normal',
    'Feet': 'Normal',
    'Arms/Hands': 'Normal',
  };

  final focusTypes = ['Normal', 'Heavy', 'Avoid'];

  Widget focusButton(String focusType, String category) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          categories[category] = focusType;
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            categories[category] == focusType
                ? Color(0xFFFFF7E3)
                : Color(0xFF01252D)),
        foregroundColor: MaterialStateProperty.all<Color>(
            categories[category] == focusType
                ? Color(0xFF01252D)
                : Color(0xFFFFF7E3)),
      ),
      child: Text(focusType),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Focus Areas', style: TextStyle(color: Color(0xFFFFF7E3))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFF7E3)),
          onPressed: () => Navigator.pop(
            context,
            {
              'waiverSigned': widget.waiverSigned,
              'preferencesSet': true, // preferences are set in this page
              'focusAreas': categories,
            },
          ),
        ),
      ),
      backgroundColor: Color(0xFF01252D),
      body: ListView(
        children: categories.entries.map((e) {
          return ListTile(
            title: Text(e.key, style: TextStyle(color: Color(0xFFFFF7E3))),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: focusTypes
                  .map((focusType) => focusButton(focusType, e.key))
                  .toList(),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFFF7E3),
        foregroundColor: Color(0xFF01252D),
        onPressed: () {
          Navigator.pop(context, {
            'waiverSigned': widget.waiverSigned,
            'preferencesSet': true, // preferences are set in this page
            'focusAreas': categories,
          });
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
