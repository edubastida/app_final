import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';

class Moviment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moviments'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitch),
            onPressed: () => Navigator.pushNamed(context, 'icon'),
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () => Navigator.pushNamed(context, 'moviment'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.play, color: Colors.orange[300]),
        backgroundColor: Colors.black,
        onPressed: () => Navigator.pushNamed(context, 'navegacion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInDown(
              delay: Duration(milliseconds: 500),
              child:
                  Icon(Icons.new_releases, color: Colors.redAccent, size: 80),
            ),
            FadeInDown(
              delay: Duration(milliseconds: 1000),
              child: Text('Click Play for watch',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            FadeInDown(
              delay: Duration(milliseconds: 1000),
              child: Text('your Notifications',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
