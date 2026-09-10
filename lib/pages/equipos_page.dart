import 'package:flutter/material.dart';

class DetalleEquipoPage extends StatefulWidget {
  final String nombreEquipo;
  const DetalleEquipoPage({super.key, required this.nombreEquipo});

  @override
  State<DetalleEquipoPage> createState() => _DetalleEquipoPageState();
}

class _DetalleEquipoPageState extends State<DetalleEquipoPage> {
  bool _encendido = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navicury', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF0D47A1),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRow('Fabricante:', widget.nombreEquipo),
            const SizedBox(height: 10),
            _buildRow('Modelo:', 'TP-KINT'),
            const SizedBox(height: 10),
            _buildRow('MAC:', '30:40:FC:30:PT:40'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: _encendido
                      ? Colors.red
                      : const Color.fromARGB(255, 235, 235, 235),
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Color(0xFF0D47A1)),
                ),
                onPressed: () {
                  setState(() {
                    _encendido = !_encendido;
                  });
                },
                child: Text(
                  _encendido ? 'Apagar' : 'Encender',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String titulo, String valor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(valor),
      ],
    );
  }
}
