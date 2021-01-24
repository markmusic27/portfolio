import 'package:flutter/material.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/pages/home.page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Core>(
          create: (_) => Core(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.id: (context) => HomePage(),
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
