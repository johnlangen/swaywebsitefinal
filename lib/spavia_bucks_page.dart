import 'package:flutter/material.dart';
import '/shipping_options_page.dart';

class SpaviaBucksPage extends StatefulWidget {
  @override
  _SpaviaBucksPageState createState() => _SpaviaBucksPageState();
}

class _SpaviaBucksPageState extends State<SpaviaBucksPage> {
  final _formKey = GlobalKey<FormState>();
  String _amount = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01252D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Give Spavia Bucks',
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How much would you like to gift?',
                style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 20),
              ),
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(
                    color: Color(0xFFFFF7E3),
                    fontSize:
                        20), // changed color to Color(0xFFFFF7E3) and increased fontSize
                decoration: InputDecoration(
                  labelText: 'Amount',
                  labelStyle: TextStyle(
                      color: Color(
                          0xFFFFF7E3)), // added this to change the label text color
                  prefix: Text('\$',
                      style: TextStyle(
                          color: Color(0xFFFFF7E3),
                          fontSize: 20)), // changed color to Color(0xFFFFF7E3)
                  enabledBorder: UnderlineInputBorder(
                    // added this to change the underline color
                    borderSide: BorderSide(color: Color(0xFFFFF7E3)),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an amount';
                  }
                  return null;
                },
                onChanged: (value) {
                  _amount = value;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigate to shipping options page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShippingOptionsPage()),
                    );
                  }
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
      ),
    );
  }
}
