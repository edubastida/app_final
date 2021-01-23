import 'package:flutter/material.dart';

class HomeLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "MENU LATERAL",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.green,
          ),
          drawer: MenuLateral(),
          body: Center(
              child: Text(
            "Click Lateral Manu for navigate",
            style: TextStyle(fontSize: 20),
          )),
        ));
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Eduard Bastida"),
            accountEmail: Text("eduard.bastida@sarria.salesians.cat"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/fondo.jpg'), fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text(
                "HOME",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          new ListTile(
            title: Text("PICTURES"),
            onTap: () {},
          ),
          new ListTile(
            title: Text("VIDEOS"),
          ),
          new ListTile(
            title: Text("SETTINGS"),
          )
        ],
      ),
    );
  }
}
