import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';

class SignUpPageFour extends StatelessWidget {
  final Color textColor = const Color(0xFF2C2C2C);
  final C2ChoiceStyle chipStyle = const C2ChoiceStyle(
    color: Color(0xFF6B6B6B),
    backgroundColor: Color(0xFFEEEEEE),
    borderColor: Color(0xFFEEEEEE),
    padding: EdgeInsets.all(10),
    labelStyle: TextStyle(color: Color(0xff666666)),
  );
  final C2ChoiceStyle activeChipStyle = const C2ChoiceStyle(
    color: Color(0xFF2C2C2C),
    backgroundColor: Color(0xFF6CBDBD),
    borderColor: Color(0xFF7ECDAE),
    borderWidth: 3,
    showCheckmark: false,
    padding: EdgeInsets.all(15),
    labelStyle: TextStyle(color: Colors.white),
  );
  final List<String> options = [
    'It prevents me from doing things I want to do',
    'It makes it difficult to socialize or form relationships',
    'It causes me a lot of stress and worry',
  ];

  SignUpPageFour({Key? key}) : super(key: key);

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
                  value: 0,
                  onChanged: (val) {},
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
