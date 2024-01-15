import 'dart:developer';

import 'package:flutter/material.dart';

Color activeColor = const Color(0xff0B0120);
Color inactiveColor = Colors.grey;

enum GenderEnum {
  male,
  female,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;
  double heightValue = 170;

  /* void changeGenderColor1(String san) {
    if (san == 'male') {
      maleColor = activeColor;
      femaleColor = inactiveColor;
    } else if (san == 'female') {
      femaleColor = activeColor;
      maleColor = inactiveColor;
    }
    setState(() {});
  }
  */

  /* void changeGenderColor2(int san) {
    if (san == 1) {
      maleColor = activeColor;
      femaleColor = inactiveColor;
    } else if (san == 2) {
      femaleColor = activeColor;
      maleColor = inactiveColor;
    }
    setState(() {});
  } 
  */
  void changeGenderColor3(GenderEnum gender) {
    if (gender == GenderEnum.male) {
      maleColor = activeColor;
      femaleColor = inactiveColor;
    } else if (gender == GenderEnum.female) {
      femaleColor = activeColor;
      maleColor = inactiveColor;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221935),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xffffffff),
            ),
          ),
        ),
        backgroundColor: Color(0xff221935),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GenderWidget(
                icon: Icons.male,
                text: 'Male',
                onTap: () {
                  changeGenderColor3(GenderEnum.male);
                },
                tus: maleColor,
              ),
              GenderWidget(
                icon: Icons.female,
                text: 'feMale',
                onTap: () {
                  changeGenderColor3(GenderEnum.female);
                },
                tus: femaleColor,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff0B0120),
            ),
            child: Column(
              children: [
                Text(
                  'Height'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30,
                    color: const Color(0xffffffff).withOpacity(0.8),
                  ),
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      heightValue.toStringAsFixed(0),
                      style: const TextStyle(
                        fontSize: 60,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'cm',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: heightValue,
                  onChanged: (adamdynJyldyruusy) {
                    setState(() {
                      heightValue = adamdynJyldyruusy;
                    });
                  },
                  max: 220,
                  min: 50,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff0B0120),
                ),
                child: Column(
                  children: [
                    Text(
                      'Weight'.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    const Text(
                      '30',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 50,
                            color: Color(0xffffffff),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 50,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff0B0120),
                ),
                child: Column(
                  children: [
                    Text(
                      'Age'.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    const Text(
                      '25',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 50,
                            color: Color(0xffffffff),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 50,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              color: Colors.red,
              height: 90,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffffffff),
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

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    this.icon,
    this.text,
    this.onTap,
    this.tus,
  });
  final IconData? icon;
  final String? text;
  final Function()? onTap;
  final Color? tus;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: tus,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80, color: const Color(0xffffffff)),
            Text(
              text!.toUpperCase(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xffffffff),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
