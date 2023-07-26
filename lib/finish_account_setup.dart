import 'package:flutter/material.dart';
import 'waiver_page.dart';
import 'preferences_page.dart';

class FinishAccountSetupPage extends StatefulWidget {
  final bool waiverSigned;
  final bool preferencesSet;

  FinishAccountSetupPage(
      {this.waiverSigned = false, this.preferencesSet = false});

  @override
  _FinishAccountSetupPageState createState() => _FinishAccountSetupPageState();
}

class _FinishAccountSetupPageState extends State<FinishAccountSetupPage> {
  bool waiverSigned = false;
  bool preferencesSet = false;

  @override
  void initState() {
    super.initState();
    if (widget.waiverSigned) {
      waiverSigned = widget.waiverSigned;
    }
    if (widget.preferencesSet) {
      preferencesSet = widget.preferencesSet;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Finish Setting Up Account',
            style: TextStyle(color: Color(0xFFFFF7E3))),
      ),
      backgroundColor: Color(0xFF01252D),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Sign Waiver',
                      style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 18)),
                  waiverSigned
                      ? Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      : ElevatedButton(
                          onPressed: () async {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WaiverPage(() =>
                                      setState(() => waiverSigned = true))),
                            );
                            if (result) {
                              setState(() => waiverSigned = true);
                            }
                          },
                          child: Text('Waiver'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFF7E3)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF01252D)),
                          ),
                        ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Set Preferences',
                      style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 18)),
                  preferencesSet
                      ? Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      : ElevatedButton(
                          onPressed: () async {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreferencesPage(
                                      waiverSigned: waiverSigned)),
                            );
                            if (result != null) {
                              setState(() {
                                waiverSigned = result['waiverSigned'];
                                preferencesSet = result['preferencesSet'];
                              });
                            }
                          },
                          child: Text('Preferences'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFF7E3)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF01252D)),
                          ),
                        ),
                ],
              ),
              SizedBox(height: 20.0),
              if (waiverSigned && preferencesSet)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to next page
                      },
                      child: Text('Continue'),
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
      ),
    );
  }
}
