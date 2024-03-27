import 'package:flutter/material.dart';
import 'package:tap_battle/screen/splash_screen.dart';

class TapBattle extends StatefulWidget {
  const TapBattle({super.key});

  @override
  _TapBattleState createState() => _TapBattleState();
}

class _TapBattleState extends State<TapBattle> {
  double up = 0.5;
  double down = 0.5;
  String player1 = 'Player 1 won';
  String player2 = 'Player 2 won';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * up,
              color: Colors.blueAccent,
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (up < 0.99) {
                      up = up + 0.01;
                      down = down - 0.01;
                    }
                    if (up >=.99) {
                      _showWinnerDialog(context, player1);
                    }
                  });
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * down,
              color: Colors.orangeAccent,
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (down < 0.99) {
                      down = down + 0.01;
                      up = up - 0.01;
                    }
                    if (down >=0.99) {
                      _showWinnerDialog(context, player2);
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showWinnerDialog(BuildContext context, String winner) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Winner!'),
          content: Text(winner),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SplashScreen(),));
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
