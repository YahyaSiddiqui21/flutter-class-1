import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chessboard'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Chessboard(),
          ),
        ),
      ),
    );
  }
}

class Chessboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];
    for (int i = 0; i < 8; i++) {
      List<Widget> squares = [];
      for (int j = 0; j < 8; j++) {
        Color color = (i + j) % 2 == 0 ? Colors.white : Colors.black;
        squares.add(
          ChessSquare(color: color),
        );
      }
      rows.add(Row(children: squares));
    }
    return Column(children: rows);
  }
}

class ChessSquare extends StatelessWidget {
  final Color color;

  const ChessSquare({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: color,
      // child: Center(
      //   child: Text(
      //     'A1', // Replace with appropriate chess notation
      //     style: TextStyle(
      //       color: color == Colors.white ? Colors.black : Colors.white,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}
