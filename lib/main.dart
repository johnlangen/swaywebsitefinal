import 'package:flutter/material.dart';
import 'login_page.dart'; // Import LoginPage
import 'finish_account_setup.dart'; // Import FinishAccountSetupPage
import 'book_a_massage_page.dart'; // Add this import at the top
import 'give_a_gift_page.dart';
import 'spavia_bucks_page.dart';
import 'give_a_membership_page.dart';
import 'gift_a_massage_page.dart';
import 'gift_a_facial_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/finishAccountSetup': (context) => FinishAccountSetupPage(),
        '/bookAMassage': (context) => BookAMassagePage(),
        '/giveAGift': (context) => GiveAGiftPage(),
        '/spaviaBucks': (context) => SpaviaBucksPage(),
        '/giveMembership': (context) => GiveAMembershipPage(),
        '/giveMassage': (context) => GiftAMassagePage(),
        '/giveFacial': (context) => GiftAFacialPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFF01252D),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF7E3), // Whiteish color
        elevation: 0,
        title: Text(
          'Sway',
          style:
              TextStyle(color: Color(0xFF01252D), fontSize: 24), // Dark color
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Color(0xFF01252D), // Dark color
          onPressed: () {
            Future.microtask(() => _scaffoldKey.currentState?.openDrawer());
          },
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text('Log In'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF01252D)), // Dark color
            ),
          ),
          TextButton(
            onPressed: () {
              // Handle Help action
            },
            child: Text('Help'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF01252D)), // Dark color
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFFFFF7E3), // Whiteish color
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Sway',
                  style: TextStyle(
                    color: Color(0xFF01252D), // Dark color
                    fontSize: 24,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF7E3), // Whiteish color
                ),
              ),
              ListTile(
                title: Text(
                  'Book a Massage',
                  style: TextStyle(
                    color: Color(0xFF01252D), // Dark color
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/bookAMassage');
                },
              ),
              ListTile(
                title: Text(
                  'Locations',
                  style: TextStyle(
                    color: Color(0xFF01252D), // Dark color
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // Navigate to locations page
                },
              ),
              ListTile(
                title: Text(
                  'Become a Member',
                  style: TextStyle(
                    color: Color(0xFF01252D), // Dark color
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // Navigate to membership page
                },
              ),
              ListTile(
                title: Text(
                  'Give a Gift',
                  style: TextStyle(
                    color: Color(0xFF01252D), // Dark color
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/giveAGift');
                },
              ),

              // The other drawer elements...
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                BlendMode.darken,
              ),
              child: Image.asset(
                'assets/images/swaygreenwall.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                    width: 230, // you can adjust this
                    height: 230, // you can adjust this
                    decoration: BoxDecoration(
                      color: Colors.black
                          .withOpacity(0.8), // 60% opaque black for tint
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFFFF7E3), // this is the whitish color
                        width:
                            3, // adjust this to make the border thicker or thinner
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/swaylogofinaltransparent.png',
                          width: 200,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'by spavia',
                          style: TextStyle(
                            color: Color(0xFFFFF7E3),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.4, // Set the width you want here. Here it's 80% of the total screen width.
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/bookAMassage');
                      },
                      child: Text('Book a Massage'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFFFF7E3)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF01252D)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.4, // Set the same width as the button above.
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text('Log In'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFFFF7E3)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF01252D)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
