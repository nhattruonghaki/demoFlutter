import 'package:demo_material_app/detail_screen.dart';
import 'package:demo_material_app/index_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'index_screen.dart';
import 'botnav.dart';
// void main() {
//   runApp(const MaterialApp(
//     home: const IndexScreen(),
//   ));
// }
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      darkTheme: ThemeData(primaryColor: Colors.grey),
      color: Colors.amber,
      supportedLocales: {const Locale('en', ' ')},
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IndexScreen(),
        '/detail': (context) => const DetailScreen(),
      },
    );
}
 
}

