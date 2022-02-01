import 'package:flutter/material.dart';
import 'package:spring_board/screens/landing_page.dart';
import 'screens/landing_page.dart';
import 'screens/job_page.dart';
import 'screens/detail_page.dart';
// import 'navigation_pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home_screen",
      routes: {
        'home_screen': (context) => const LandingPage(),
        JobPage.id: (context) => const JobPage(),
        DetailPage.page: (context) => const DetailPage()
      },
    );
  }
}
