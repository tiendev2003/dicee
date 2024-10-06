import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // state variables for 2 dice
  int dice1 = 1;
  int dice2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text('Dicee')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                             dice1= dice1 == 6 ? 1 : dice1 + 1;
                          });
                        },
                        child: Image.asset('assets/dice$dice1.png'))),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                        //  tap to 1 to 6 and 6 back to 1
                        //  1 2 3 4 5 6
                          setState(() {
                             dice2= dice2 == 6 ? 1 : dice2 + 1;
                          });
                          log('Dice 2 was pressed');
                        },
                        child: Image.asset('assets/dice$dice2.png'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
