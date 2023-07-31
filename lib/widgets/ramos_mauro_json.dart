import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class RamosMauroJson extends StatefulWidget {
  const RamosMauroJson({Key? key}) : super(key: key);

  @override
  State<RamosMauroJson> createState() => _RamosMauroJsonState();
}

class _RamosMauroJsonState extends State<RamosMauroJson> {
  Future<List<dynamic>> _loadJsonData() async {
    String jsonString = await rootBundle.loadString('data/archivo_json.json');
    return json.decode(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        future: _loadJsonData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error al cargar datos'));
          } else if (snapshot.hasData) {
            List<dynamic> jsonData = snapshot.data!;
            return ListView.builder(
              itemCount: jsonData.length,
              itemBuilder: (context, index) {
                var data = jsonData[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.network(data['imagen']),
                        title: Text(data['texto']),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text('No hay datos disponibles'));
          }
        },
      ),
    );
  }
}
