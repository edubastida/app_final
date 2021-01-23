import 'package:disenos/src/pages/menu_lateral.dart';
import 'package:disenos/src/pages/home_page.dart';
import 'package:disenos/src/pages/icon_page.dart';
import 'package:disenos/src/pages/moviment.dart';
import 'package:disenos/src/pages/navegacion_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/calculadora_icm.dart';
import 'package:disenos/src/pages/laytonbbdd.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenys',
      initialRoute: 'basico',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
        'calculadora': (BuildContext context) => Home(),
        'moviment': (BuildContext context) => Moviment(),
        'icon': (BuildContext context) => IconPage(),
        'navegacion': (BuildContext context) => NavegacionPage(),
        'menulat': (BuildContext context) => HomeLateral(),
        'sqlite': (BuildContext context) => HomePage(),
        'laytonbbdd': (BuildContext context) => laytonbbdd(),
      },
    );
  }
}
