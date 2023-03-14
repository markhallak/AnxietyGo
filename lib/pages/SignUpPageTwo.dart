import 'package:flutter/material.dart';
import 'package:anxiety_go/components/chip_choice.dart';

class SignUpPageTwo extends StatefulWidget {
  const SignUpPageTwo({super.key});

  @override
  State<SignUpPageTwo> createState() => _SignUpPageTwoState();
}

class _SignUpPageTwoState extends State<SignUpPageTwo> {
  final Color textColor = const Color(0xFF2C2C2C);

  List<String> oftenOptions = [
    'Never',
    'Sometimes',
    'Always',
  ];

  List<String> situationOptions = [
    'Meeting new people',
    'public Speaking',
    'Grocery Shopping',
    'Eating in Public',
    'Parties',
    'Appointments and Schedules',
    'Workplace',
    'Trying something new',
    'Something else'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'AnxietyGo',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ChipChoice(
                  source: oftenOptions,
                  text: 'How often do you experience social anxiety?',
                ),
                const SizedBox(height: 25),
                ChipChoice(
                  text: 'Which situations trigger your social anxiety?',
                  source: situationOptions,
                ),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
