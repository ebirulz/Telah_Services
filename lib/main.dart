import 'package:flutter/material.dart';
import 'package:telah_services/screens/add_service_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Raleway',
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white
      ),
      home: const AddServiceScreen(),
    );
  }
}
