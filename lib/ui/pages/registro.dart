import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro")),
      body: Center(
        child: Column(
         children: <Widget>[            
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Usuario',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    print('$text');
                  }),
            ),
             Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Correo',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    print('$text');
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    print('$text');
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirme Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    print('$text');
                  }),
            ),
            
            //  ],
            //),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Guardar")),
          ],
        ),
      ),
    );
  }
}
