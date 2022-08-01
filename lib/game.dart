

import "package:flutter/material.dart";

class GameMain extends StatelessWidget {
  const GameMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Game()
      )
    );
  }
}

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const BoardContainer(),
          ElevatedButton(
            onPressed: () => {Navigator.pop(context)},
            child: Text("Go Back")
          )
        ],
      )
    );
  }
}

class BoardContainer extends StatelessWidget {
  const BoardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Board()
        )
      )
    );
  }
}

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {

  double? size;
  

  Iterable<int> range(int n) sync*{
    for(int i = 0; i < n; i++){
      yield i;
    }
  }

  Widget _buildCell(r1, c1, r2, c2){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 5,color: Colors.blue),
        color: Colors.white
      ),
    );
  }

  Widget _buildSmallBoardRow(r1, c1, r2){
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [for(int c2 in range(3)) Expanded(child:_buildCell(r1, c1, r2, c2))]
    );
  }

  Widget _buildSmallBoard(r1, c1){
    return
      Column(
        mainAxisSize: MainAxisSize.max,
        children: [for(int r2 in range(3)) Expanded(child:_buildSmallBoardRow(r1, c1, r2))]
      );
  }

  Widget _buildRow(int r1){
    return 
      Row(
        mainAxisSize: MainAxisSize.max,
        children:[for(int c1 in range(3)) Expanded(child:_buildSmallBoard(r1, c1))]
      );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [for(int r1 in range(3)) Expanded(child:_buildRow(r1))]
    );
  }
}