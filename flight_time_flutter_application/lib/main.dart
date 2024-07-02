import 'package:flight_time_flutter_application/login_signup/login_signup_page.dart';
import 'package:flight_time_flutter_application/pages/reservation_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: ReservationListPage.routeName,
    routes: {
      LoginSignupPage.routeName: (context) => const LoginSignupPage(),
      ReservationListPage.routeName: (context) => const ReservationListPage(),
    },
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
