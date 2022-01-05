import 'package:flutter/material.dart';
import 'package:flutter_internship/providers/counter_provider.dart';
import 'package:flutter_internship/providers/shopping_cart_provider.dart';
import 'package:flutter_internship/screens/first_screen.dart';
import 'package:flutter_internship/screens/second_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
MultiProvider(providers: [
  ChangeNotifierProvider(create: (_)=>Counter()),
  ChangeNotifierProvider(create: (_)=>ShoppingCart())

],
child: MyApp(),)
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>MyFirstScreen(),
        '/second':(context)=>SecondScreen()
      },
    );
  }
}
