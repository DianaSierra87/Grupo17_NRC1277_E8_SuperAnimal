import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:application_prb/ui/pages/registro.dart';
import 'package:application_prb/ui/pages/perfil.dart';


class Login extends StatefulWidget {
const Login({Key? key}) : super(key: key);

  String get title => "";

  //final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


 @override
  Widget build(BuildContext context) {
    TextStyle olvidoContrasenia = TextStyle(color: Colors.grey, fontSize: 20.0);
    return Scaffold(      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Image.network(
               // 'https://i.ibb.co/d4q3tXG/undraw-Pair-programming-re-or4x.png',
              //  width: 200,
              //  height: 200,
              //  fit: BoxFit.cover),
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
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    print('$text');
                  }),
            ),
            /*Row(  se comento 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_selected ? "Recordar" : "No recordar"),
                Checkbox(
                    value: _selected,
                    onChanged: (value) {
                      setState(() {
                        _selected = value!;
                      });
                    })
              ],
            ),*/
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PerfilPage()));
                },
                child: const Text('Iniciar Sesión'),
                style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                ), 
                RichText(
                  text: TextSpan(
                  style: olvidoContrasenia,
                  children: <TextSpan>[
                  // TextSpan(text: 'By clicking Sign Up, you agree to our '),
                     TextSpan(
                          text: 'Olvidaste tu contraseña',
                          style: olvidoContrasenia,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => const RegistroPage()));
                              print('Terms of Service"');
                            }),
                  ],
                ),
              ),    
               RichText(
                  text: TextSpan(
                  style: olvidoContrasenia,
                  children: <TextSpan>[
                      TextSpan(
                        text: '*Terminos y condiciones  ',
                        style: olvidoContrasenia,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => const RegistroPage()));
                           // print('Privacy Policy"');
                          }),
                  ],
                ),
              ),
            
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistroPage()));
                  },
                  child: const Text('Registrarse'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.purple,
                      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                      textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold )
                      ),
                ),
          ],
        ),
      ),
    );
  }
}
