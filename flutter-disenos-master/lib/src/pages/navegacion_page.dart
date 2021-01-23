import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.purple, title: Text('Notificaciones')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInDown(
              delay: Duration(milliseconds: 500),
              child: Icon(Icons.sentiment_satisfied_alt,
                  color: Colors.black, size: 80),
            ),
            FadeInDown(
              delay: Duration(milliseconds: 1000),
              child: Text('You have Notifications',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
      floatingActionButton: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.purple,
      items: [
        BottomNavigationBarItem(
            title: Text('Bell'),
            icon: Stack(
              children: <Widget>[
                FaIcon(FontAwesomeIcons.bell),
                Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: BounceInUp(
                      from: 10,
                      child: Container(
                        child: Text('8',
                            style: TextStyle(color: Colors.white, fontSize: 7)),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.redAccent, shape: BoxShape.circle),
                      ),
                    ))
              ],
            )),
        BottomNavigationBarItem(
            title: Text('Home'), icon: FaIcon(FontAwesomeIcons.home)),
        BottomNavigationBarItem(
            title: Text('Desktop'), icon: FaIcon(FontAwesomeIcons.desktop)),
      ],
    );
  }
}