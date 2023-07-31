import 'package:flutter/material.dart';

class RamosMauroLogin extends StatefulWidget {
  const RamosMauroLogin({super.key});

  @override
  State<RamosMauroLogin> createState() => _RamosMauroLoginState();
}

class _RamosMauroLoginState extends State<RamosMauroLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Lección segundo Parcial",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://lh5.googleusercontent.com/p/AF1QipNWK3xa0Tg7HBwRuyrQnp_VWe_2HM14W_kEJlbw=w408-h544-k-no"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Ingresa tu correo electrónico'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingresa tu correo electrónico';
                    }
                    if (value != 'admin@ug.edu.ec') {
                      return "Correo electrónico no encontrado";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration:
                      const InputDecoration(hintText: 'Ingrese su constraseña'),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor ingresa tu contraseña";
                    }
                    if (value != "123") {
                      return "Constraseña no válida";
                    }

                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/archivo');
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text(
                    "Conectar",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: const Text(
                    "Derechos reservados: Ramos Mesías Mauro Fabrizio",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
