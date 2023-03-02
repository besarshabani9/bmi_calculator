import 'package:flutter/material.dart';
import 'bmi_help.dart';
import 'result_page.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

enum Gender { MALE, FERMALE, NONE }

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Gender genderValue = Gender.NONE;
  int weightValue = 75;
  int ageValue = 25;
  int heightValue = 125;

  changeWeightValue(int newValue) {
    if ((weightValue > 50 && newValue == -1) ||
        (weightValue < 250 && newValue == 1)) {
      weightValue = weightValue + newValue;
    }
  }

  changeAgeValue(int newValue) {
    if ((ageValue > 15 && newValue == -1) || (ageValue < 92 && newValue == 1)) {
      ageValue = ageValue + newValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    genderValue = Gender.MALE;
                  });
                },
                child: GenderPage(
                  genderTitle: "MALE",
                  iconGender: Icons.male,
                  genderColor: genderValue == Gender.MALE
                      ? Colors.red
                      : Colors.lightBlue,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    genderValue = Gender.FERMALE;
                  });
                },
                child: GenderPage(
                  genderTitle: "FEMALE",
                  iconGender: Icons.female,
                  genderColor: genderValue == Gender.FERMALE
                      ? Colors.red
                      : Colors.lightBlue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          HeightPage(changeHeightValue: (value) {
            heightValue = value;
          }),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 160.0,
                height: 150.0,
                decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "WEIGHT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "$weightValue kg",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              changeWeightValue(1);
                            });
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              changeWeightValue(-1);
                            });
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 160.0,
                height: 150.0,
                decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "AGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      ageValue.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              changeAgeValue(1);
                            });
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              changeAgeValue(-1);
                            });
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {
              BMIHelp bmi =
                  BMIHelp(weightValue: weightValue, heightValue: heightValue);

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(
                    bmiValeu: bmi.getBMIValue(),
                    bmiResult: bmi.getResult(),
                    bmiDescription: bmi.getDescription());
              }));
            },
            child: Container(
              width: 370.0,
              height: 70.0,
              decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(6.0))),
              child: const Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GenderPage extends StatelessWidget {
  String genderTitle = "";
  late IconData iconGender;
  Color genderColor;
  GenderPage(
      {required this.genderTitle,
      required this.iconGender,
      required this.genderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      height: 120.0,
      decoration: BoxDecoration(
          color: genderColor,
          borderRadius: const BorderRadius.all(Radius.circular(12.0))),
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
  final Function(int value) changeHeightValue;
  HeightPage({required this.changeHeightValue});

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
      width: 370.0,
      height: 170.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
              widget.changeHeightValue(heightValue.toInt());
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
