import 'package:flutter/material.dart';
import 'focus_page.dart';

class PreferencesPage extends StatefulWidget {
  final bool waiverSigned;

  PreferencesPage({required this.waiverSigned});

  @override
  _PreferencesPageState createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  final categories = {
    'Stress Relief': false,
    'Reducing Pain': false,
    'Sports Recovery': false,
    'Relaxation': false,
    'Health and Wellness': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What brings you in for a massage?',
            style: TextStyle(color: Color(0xFFFFF7E3))),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF01252D),
      body: ListView(
        children: categories.entries.map((e) {
          return CheckboxListTile(
            title: Text(e.key, style: TextStyle(color: Color(0xFFFFF7E3))),
            value: e.value,
            activeColor: Color(0xFFFFF7E3),
            checkColor: Color(0xFF01252D),
            onChanged: (bool? value) {
              setState(() {
                categories[e.key] = value!;
              });
            },
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFFF7E3),
        foregroundColor: Color(0xFF01252D),
        onPressed: categories.values.any((value) => value)
            ? () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FocusPage(
                      waiverSigned: widget.waiverSigned,
                      preferencesSet: true,
                    ),
                  ),
                );

                if (result != null) {
                  Navigator.pop(context, {
                    'waiverSigned': result['waiverSigned'],
                    'preferencesSet': result['preferencesSet'],
                  });
                }
              }
            : null,
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
