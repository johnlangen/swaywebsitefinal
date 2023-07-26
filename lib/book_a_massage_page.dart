import 'package:flutter/material.dart';
import 'location.dart'; // import Location class
import 'pricing_page.dart'; // import PricingPage class

class BookAMassagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01252D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Book a Massage',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Pick a location',
              style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 24),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter address',
                hintStyle: TextStyle(color: Colors.white54),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 18),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 200,
              color: Colors.grey,
              child: Center(
                child: Text(
                  'Map will go here',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  Location location = Location('Location ${index + 1}',
                      '1234 Sway Street, City ${index + 1}, ST');

                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                    title: Text(
                      location.name,
                      style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 18),
                    ),
                    subtitle: Text(
                      location.address,
                      style: TextStyle(color: Color(0xFFFFF7E3), fontSize: 16),
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PricingPage(location: location),
                          ),
                        );
                      },
                      child: Text('Book Now'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFFFF7E3)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF01252D)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BookAMassagePage(),
  ));
}
