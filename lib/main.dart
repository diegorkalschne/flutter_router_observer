import 'package:flutter/material.dart';

import 'views/first_page.dart';
import 'views/second_page.dart';

void main() => runApp(const MyApp());

final routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Route Observer',
      navigatorObservers: [routeObserver],
      routes: {
        '/': (_) => const FirstPage(),
        '/second': (_) => const SecondPage(),
      },
    );
  }
}
