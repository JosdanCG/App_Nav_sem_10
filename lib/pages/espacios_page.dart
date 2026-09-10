import 'package:flutter/material.dart';

class EspaciosPage extends StatefulWidget {
  final String nombreEspacio;
  const EspaciosPage({super.key, required this.nombreEspacio});

  @override
  State<EspaciosPage> createState() => _EspaciosPageState();
}

class _EspaciosPageState extends State<EspaciosPage> {
  double _valorLuz1 = 51;
  double _valorLuz2 = 51;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajustar Espacio ${widget.nombreEspacio}')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Luz 1', style: TextStyle(fontWeight: FontWeight.bold)),
            Slider(
              value: _valorLuz1,
              min: 0,
              max: 100,
              divisions: 100,
              label: _valorLuz1.round().toString(),
              onChanged: (double value) {
                setState(() => _valorLuz1 = value);
              },
            ),
            const SizedBox(height: 20),
            const Text('Luz 2', style: TextStyle(fontWeight: FontWeight.bold)),
            Slider(
              value: _valorLuz2,
              min: 0,
              max: 100,
              divisions: 100,
              label: _valorLuz2.round().toString(),
              onChanged: (double value) {
                setState(() => _valorLuz2 = value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
