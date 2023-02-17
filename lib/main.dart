import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GenderPage(genderTitle: "MALE", iconGender: Icons.male),
                GenderPage(genderTitle: "FEMALE", iconGender: Icons.female),
              ],
            ),
            HeightPage(),
          ],
        ),
      ),
    );
  }
}

class GenderPage extends StatelessWidget {
  String genderTitle = "";
  late IconData iconGender;
  GenderPage({required this.genderTitle, required this.iconGender});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      height: 120.0,
      decoration: const BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconGender,
            color: Colors.white,
            size: 45.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            genderTitle.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}

class HeightPage extends StatefulWidget {
  const HeightPage({Key? key}) : super(key: key);

  @override
  State<HeightPage> createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  double heightValue = 175.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      width: 350.0,
      height: 170.0,
      child: Column(
        children: [
          const Text(
            "HEIGHT",
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                heightValue.round().toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                ),
              ),
              const Text(
                "cm",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          Slider(
            value: heightValue,
            label: heightValue.round().toString(),
            divisions: 120,
            onChanged: (value) {
              setState(() {
                heightValue = value;
              });
            },
            activeColor: Colors.white,
            inactiveColor: Colors.black26,
            min: 100,
            max: 220,
          )
        ],
      ),
    );
  }
}
