import 'package:diamond_store_app/core/constants/colors.dart';
import 'package:diamond_store_app/presentation/home/page/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppsColors.black,
              fontFamily: 'Poppins',
            ),
      ),
      home: const DashboardPage(),
    );
  }
}
