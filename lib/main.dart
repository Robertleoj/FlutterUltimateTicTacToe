import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ultimate Tic Tac Toe',
      home: SafeArea(
        child: Home()
      )
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Material(
        child: FractionallySizedBox(
          heightFactor: 0.8,
          child: Column(
            children: const [
              MenuButton('Two player'),
              MenuButton('Play AI'),
              MenuButton('Exit')
            ]
          )
        )
    );
  }
}

class MenuButton extends StatelessWidget {

  final String text;
  const MenuButton(this.text,{super.key});

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: FractionallySizedBox(
          widthFactor: 0.7,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(text)
          )
        )
      )
    );
  }
}





