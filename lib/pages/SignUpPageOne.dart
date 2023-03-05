import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';

import 'package:anxiety_go/components/CustomTextField.dart';

class SignUpPageOne extends StatefulWidget {
  const SignUpPageOne({super.key});

  @override
  State<SignUpPageOne> createState() => _SignUpPageOneState();
}

class _SignUpPageOneState extends State<SignUpPageOne> {
  final Color textColor = const Color(0xFF2C2C2C);
  final Color chipBorderColor = const Color(0xFF7ECDAE);
  final Color chipBackgroundColor = const Color(0xFFBCE6D7);
  final C2ChoiceStyle chipStyle = const C2ChoiceStyle(
    color: Color(0xFF6B6B6B),
    backgroundColor: Color(0xFFEEEEEE),
    borderColor: Color(0xFFEEEEEE),
  );
  late C2ChoiceStyle activeChipStyle = const C2ChoiceStyle(
    color: Color(0xFF2C2C2C),
    backgroundColor: Color(0xFFBCE6D7),
    borderColor: Color(0xFF7ECDAE),
    borderWidth: 3,
    showCheckmark: false,
  );

  int agesTag = -1;
  List<String> ageOptions = [
    'Under 18',
    '18 - 25',
    '25 - 35',
    '35 - 45',
    '45 - 55',
    '55+',
  ];
  int genderTag = -1;
  List<String> genderOptions = [
    'Male',
    'Female',
    'Nonbinary',
  ];
  int treatmentTag = -1;
  List<String> treatmentOptions = [
    'Therapy',
    'Self Help',
    'N/A',
  ];

  Widget _buildAgeSelection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Age',
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
        const SizedBox(height: 10),
        ChipsChoice<int>.single(
          wrapped: true,
          padding: EdgeInsets.zero,
          value: agesTag,
          onChanged: (val) => setState(() => agesTag = val),
          choiceItems: C2Choice.listFrom<int, String>(
            source: ageOptions,
            value: (i, v) => i,
            label: (i, v) => v,
          ),
          choiceStyle: chipStyle,
          choiceActiveStyle: activeChipStyle,
        ),
      ],
    );
  }

  Widget _buildGenderSelection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
        const SizedBox(height: 10),
        ChipsChoice<int>.single(
          wrapped: true,
          padding: EdgeInsets.zero,
          value: genderTag,
          onChanged: (val) => setState(() => genderTag = val),
          choiceItems: C2Choice.listFrom<int, String>(
            source: genderOptions,
            value: (i, v) => i,
            label: (i, v) => v,
          ),
          choiceStyle: chipStyle,
          choiceActiveStyle: activeChipStyle,
        ),
      ],
    );
  }

  Widget _buildOcupation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ocupation',
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
        const SizedBox(height: 10),
        const CustomTextfield(), // TODO: Replace w/ component from Issue #33
      ],
    );
  }

  Widget _buildLocation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
        const SizedBox(height: 10),
        const CustomTextfield(), // TODO: Replace w/ component from Issue #33
      ],
    );
  }

  Widget _buildTherapySelection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Are you seeking treatment for mental health?',
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
        const SizedBox(height: 10),
        ChipsChoice<int>.single(
          wrapped: true,
          padding: EdgeInsets.zero,
          value: treatmentTag,
          onChanged: (val) => setState(() => treatmentTag = val),
          choiceItems: C2Choice.listFrom<int, String>(
            source: treatmentOptions,
            value: (i, v) => i,
            label: (i, v) => v,
          ),
          choiceStyle: chipStyle,
          choiceActiveStyle: activeChipStyle,
        ),
      ],
    );
  }

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
                _buildAgeSelection(),
                const SizedBox(height: 25),
                _buildGenderSelection(),
                const SizedBox(height: 25),
                _buildOcupation(),
                const SizedBox(height: 25),
                _buildLocation(),
                const SizedBox(height: 25),
                _buildTherapySelection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
