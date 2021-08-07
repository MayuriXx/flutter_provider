import 'package:flutter/material.dart';
import 'package:flutter_provider/presentation/about.dart';
import 'package:flutter_provider/presentation/home.dart';
import 'package:flutter_provider/presentation/settings.dart';
import 'package:provider/provider.dart';

import 'data/model/ui.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UI(),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => Settings(),
        },
      ),
    );
  }
}
