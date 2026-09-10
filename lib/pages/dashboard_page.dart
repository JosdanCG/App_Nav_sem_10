import 'package:flutter/material.dart';
import 'package:tarea_10/pages/equipos_page.dart';
import 'package:tarea_10/pages/espacios_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navicury Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0D47A1),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Espacios',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Botones de Espacios
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: ['A', 'B', 'C'].map((espacio) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EspaciosPage(nombreEspacio: espacio),
                        ),
                      );
                    },
                    child: Text(
                      espacio,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 30),
              const Text(
                'Equipos conectados',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Botones de Equipos
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildEquipoButton(context, 'TV Cuarto', Icons.tv),
                  _buildEquipoButton(context, 'Refrigeradora', Icons.kitchen),
                  _buildEquipoButton(
                    context,
                    'Puerta Sala',
                    Icons.door_front_door,
                  ),
                  _buildEquipoButton(context, 'Cochera', Icons.directions_car),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildEquipoButton(BuildContext context, String nombre, IconData icono) {
  return Card(
    elevation: 2,
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalleEquipoPage(nombreEquipo: nombre),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icono, size: 40, color: const Color(0xFF0D47A1)),
          const SizedBox(height: 8),
          Text(nombre, textAlign: TextAlign.center),
        ],
      ),
    ),
  );
}
