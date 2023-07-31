import 'package:flutter/material.dart';
import 'package:ramos_mauro_leccion/widgets/ramos_mauro_json.dart';

class RamosMauroArchivo extends StatefulWidget {
  const RamosMauroArchivo({super.key});

  @override
  State<RamosMauroArchivo> createState() => _RamosMauroArchivoState();
}

class _RamosMauroArchivoState extends State<RamosMauroArchivo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            "Archivo Json",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black),
      body: const RamosMauroJson(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text(
          'Regresar',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }
}
