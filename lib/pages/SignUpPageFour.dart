import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';

class SignUpPageFour extends StatefulWidget {
  const SignUpPageFour({super.key});

  @override
  State<SignUpPageFour> createState() => _SignUpPageFourState();
}

class _SignUpPageFourState extends State<SignUpPageFour> {
  final Color textColor = const Color(0xFF2C2C2C);
  final C2ChoiceStyle chipStyle = const C2ChoiceStyle(
    color: Color(0xFF6B6B6B),
    backgroundColor: Color(0xFFEEEEEE),
    borderColor: Color(0xFFEEEEEE),
    showCheckmark: false,
  );
  final C2ChoiceStyle activeChipStyle = const C2ChoiceStyle(
      showCheckmark: false,
      color: Colors.black,
      borderColor: Color(0xff8CDBC0),
      backgroundColor: Color(0xffB0E7D6),
      borderRadius: BorderRadius.all(Radius.circular(15)));
  final List<String> options = [
    'Prevents me from doing things I want to do',
    'Makes it difficult to socialize or form relationships',
    'Causes me a lot of stress and worry',
  ];

  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                Text(
                  'How does your anxiety affect your daily life and'
                  ' relationships?',
                  style: TextStyle(
                    fontSize: 20,
                    color: textColor,
                  ),
                ),
                const SizedBox(height: 10),
                ChipsChoice<int>.single(
                  padding: EdgeInsets.zero,
                  value: idx,
                  onChanged: (val) {
                    setState(() {
                      idx = val;
                    });
                  },
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                  choiceStyle: chipStyle,
                  choiceActiveStyle: activeChipStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
