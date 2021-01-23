import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconPage extends StatefulWidget {
  @override
  _IconPageState createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  bool activar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Return'),
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            setState(() {
              activar = true;
            });
          }),
      backgroundColor: Colors.purple,
      body: Center(
        child: ZoomOut(
            animate: activar,
            from: 30,
            duration: Duration(seconds: 1),
            child:
                FaIcon(FontAwesomeIcons.twitch, color: Colors.white, size: 50)),
      ),
    );
  }
}
