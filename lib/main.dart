import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/splash_page.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SplashPage.id: (context) => const SplashPage(),
          HomePage.id: (context) => const HomePage(),
          UpdateProductPage.id: (context) => const UpdateProductPage(),
        },
        initialRoute: SplashPage.id);
  }
}
