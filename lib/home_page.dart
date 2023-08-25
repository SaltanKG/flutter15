import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color(0xffDA0037),
        title: const Text("Dice App"),
      ),
      body: const HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int firstDiceIndex = 6;
  int secondDiceIndex = 5;

  Random random = Random();
  void changeDice() {
    // firstDiceIndex ke 1-6 cheinki kaalagan sandy berebiz
    firstDiceIndex = random.nextInt(6) + 1;
    // secondDiceIndex ke 1-6 cheinki kaalagan sandy berebiz
    secondDiceIndex = random.nextInt(6) + 1;
    // UI dy janyloo uchun setState chakyrabyz
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(width: 20),
          Expanded(
            child: InkWell(
              onTap: changeDice,
              child: Image.asset('assets/images/dice$firstDiceIndex.png'),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: InkWell(
              onTap: changeDice,
              child: Image.asset('assets/images/dice$secondDiceIndex.png'),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
