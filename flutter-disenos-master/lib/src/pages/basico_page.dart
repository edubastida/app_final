import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(context),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
        ],
      ),
    ));
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage(
              'https://revistaliterariamonolito.com/wp-content/uploads/2019/06/rese%C3%B1a-literaria.jpg'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('The Ring', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Un sitio sombrio', style: estiloSubTitulo),
                ],
              ),
            ),
            Text('85', style: TextStyle(fontSize: 20.0)),
            Icon(Icons.star, color: Colors.red, size: 30.0)
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.add_alert, 'ADD'),
        _accion(Icons.calendar_today_rounded, 'CALENDAR'),
        _accion(Icons.ios_share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'The Ring es una película estadounidense de terror psicológico, estrenada en 2002, dirigida por Gore Verbinski, y protagonizada por Naomi Watts, Martin Henderson y Daveigh Chase. Se trata de un remake occidentalizado de la película de terror japonesa de 1998, Ringu de Hideo Nakata, que a su vez se basó en la novela Ringu de Kōji Suzuki (que también ayudó a coescribir las dos versiones de la película), y se centra en una cinta de video maldita misteriosa que contiene una serie aparentemente aleatoria de inquietantes imágenes. Después de ver la cinta, el espectador recibe una llamada telefónica en la que la voz de una chica anuncia que el espectador va a morir en siete días. La película fue un éxito de crítica y comercial.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
