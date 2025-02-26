import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Iconos con Subtítulos',
            style: TextStyle(fontSize: 27, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffff88ff),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Rogelio_Bejarano_22308051281154",
                  style: TextStyle(fontSize: 22, color: Color(0xffc30c0c))),

              // Primera fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithLabel(
                    icon: Icons.home,
                    label: '22308051281154',
                    color: Colors.blue, // Color personalizado
                  ),
                  IconWithLabel(
                    icon: Icons.search,
                    label: '22308051281154',
                    color: Colors.red, // Color personalizado
                  ),
                  IconWithLabel(
                    icon: Icons.accessibility_new,
                    label: '22308051281154',
                    color: Colors.purple, // Color personalizado
                  ),
                ],
              ),
              SizedBox(height: 20), // Espacio entre filas
              // Segunda fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithLabel(
                    icon: Icons.settings,
                    label: 'Rogelio Bejarano',
                    color: Colors.green, // Color personalizado
                  ),
                  IconWithLabel(
                    icon: Icons.directions_railway_filled_sharp,
                    label: 'Rogelio Bejarano',
                    color: Colors.orange, // Color personalizado
                  ),
                  IconWithLabel(
                    icon: Icons.format_underlined_sharp,
                    label: 'Rogelio Bejarano',
                    color: Colors.teal, // Color personalizado
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

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color; // Parámetro para el color

  IconWithLabel({
    required this.icon,
    required this.label,
    this.color = Colors.black, // Color predeterminado (negro)
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: color), // Aplicar el color al icono
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label),
      ],
    );
  }
}
