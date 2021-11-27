import 'package:application_prb/ui/pages/login.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Animal',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.purple,
          secondary: Color(0xff1d2448),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Super Animal '),
          
        ),
        body: const Center(
          child: Login(),
        ),
      ),
    );
  }
}
