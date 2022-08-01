
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "game.dart" as game;



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  navigateToGame(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return game.Game();
        }
      )
    );
  }

  @override
  Widget build(BuildContext context){
    return Center(
        child: FractionallySizedBox(
          heightFactor: 0.8,
          child: Column(
            children: [
              MenuButton(
                onClick: (BuildContext context){navigateToGame(context);},
                text:'Two player'
              ),
              MenuButton(
                onClick: (BuildContext context){print("AI clicked");},
                text: 'Play AI'
              ),
              MenuButton(
                onClick: (BuildContext context){SystemNavigator.pop();},
                text: 'Exit'
              )
            ]
          )
        )
    );
  }
}

class MenuButton extends StatelessWidget {

  final String text;
  final Function onClick;

  const MenuButton({required this.onClick, required this.text,super.key});


  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: FractionallySizedBox(
          widthFactor: 0.7,
          child: ElevatedButton(
            onPressed: () {
              onClick(context);
              print("clicked $text");
            },
            child: Text(text)
          )
        )
      )
    );
  }
}





