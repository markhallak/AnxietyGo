import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';

class SignUpPageThree extends StatefulWidget {
  const SignUpPageThree({super.key});

  @override
  State<SignUpPageThree> createState() => _SignUpPageThreeState();
}

class _SignUpPageThreeState extends State<SignUpPageThree> {
  int _ans1 = 0;
  int _ans2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'AnxietyGo',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Figtree-Black', fontSize: 32),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Do you experience physical symptoms of anxiety,'
              ' such as sweating or racing heart?',
              style: TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 20),
            ),
            ChipsChoice<int>.single(
              value: _ans1,
              onChanged: (value) => setState(() {
                _ans1 = value;
              }),
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              wrapped: true,
              choiceItems: C2Choice.listFrom<int, String>(
                source: [
                  'Never',
                  'Sometimes',
                  'Always',
                ],
                value: (i, v) => i,
                label: (i, v) => v,
              ),
              choiceStyle: C2ChoiceStyle(
                color: Color(0xFF6B6B6B),
                backgroundColor: Color(0xFFEEEEEE),
                borderColor: Color(0xFFEEEEEE),
                showCheckmark: false,
              ),
              choiceActiveStyle: const C2ChoiceStyle(
                showCheckmark: false,
                color: Colors.black,
                borderColor: Color(0xff8CDBC0),
                backgroundColor: Color(0xffB0E7D6),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Have you received any previous treatment for your anxiety,'
              ' such as therapy or medication?',
              style: TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 20),
            ),
            ChipsChoice<int>.single(
              wrapped: true,
              value: _ans2,
              padding: EdgeInsets.zero,
              crossAxisAlignment: CrossAxisAlignment.start,
              onChanged: (value) => setState(() {
                _ans2 = value;
              }),
              direction: Axis.horizontal,
              choiceItems: C2Choice.listFrom<int, String>(
                /// TODO: Create a seperate list to use it here
                source: [
                  'Yes, Currently',
                  'Yes, I did previously',
                  'No, never received treatment'
                ],
                value: (i, v) => i,
                label: (i, v) => v,
              ),
              choiceStyle: C2ChoiceStyle(
                  color: Color(0xFF6B6B6B),
                  backgroundColor: Color(0xFFEEEEEE),
                  borderColor: Color(0xFFEEEEEE),
                  showCheckmark: false),
              choiceActiveStyle: const C2ChoiceStyle(
                showCheckmark: false,
                color: Colors.black,
                borderColor: Color(0xff8CDBC0),
                backgroundColor: Color(0xffB0E7D6),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
