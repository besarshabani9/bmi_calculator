import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String bmiValeu = "";
  String bmiResult = "";
  String bmiDescription = "";

  ResultPage(
      {required this.bmiValeu,
      required this.bmiResult,
      required this.bmiDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              bmiResult,
              style: const TextStyle(
                fontSize: 35,
                color: Colors.green,
              ),
            ),
            Text(
              bmiValeu,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
            ),
            Text(
              bmiDescription,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
