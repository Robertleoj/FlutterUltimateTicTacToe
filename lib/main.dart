import 'package:flutter/material.dart';
import "home_menu.dart" as home;

void main() {
  runApp(const App());
}

enum MenuState{
  home,
  game
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ultimate Tic Tac Toe',
      home: Scaffold(
        body: SafeArea(
          child: home.Home(),
        )
      )
    );
  }
}
