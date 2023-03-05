import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage4 extends StatefulWidget {
  const SignUpPage4({super.key});

  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

class _SignUpPage4State extends State<SignUpPage4> {
  int _ans1 = 0;
  int _ans2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'AnxietyGo',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 50, fontWeight: FontWeight.w600),
            ),
            Container(
              width: double.infinity,
              height: 28,
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.grey.withOpacity(0.5),
              child: Center(
                  child: Text(
                'Progress Bar',
                style: GoogleFonts.poppins(fontSize: 15),
              )),
            ),
            SizedBox(height: 25,),
            Text(
              'Do you experience physical symptoms of anxiety,'
              ' such as sweating or racing heart?',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            ChipsChoice<int>.single(
              value: _ans1,
              onChanged: (value) => setState(() {
                _ans1 = value;
              }),
              choiceItems: C2Choice.listFrom<int, String>(
                source: ['Never', 'Sometimes', 'Always'],
                value: (i, v) => i,
                label: (i, v) => v,
              ),
              choiceStyle: C2ChoiceStyle(
                showCheckmark: false,
                color: Colors.black38,
                backgroundColor: Colors.grey.withOpacity(0.3),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              choiceActiveStyle: const C2ChoiceStyle(
                showCheckmark: false,
                color: Colors.black,
                borderColor: Color(0xff8CDBC0),
                backgroundColor: Color(0xffB0E7D6),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              wrapped: true,
            ),
                SizedBox(height: 25,),
            Text(
              'Have you received any previous treatment for your anxiety,'
              ' such as therapy or medication?',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            ChipsChoice<int>.single(
              value: _ans2,
              onChanged: (value) => setState(() {
                _ans2 = value;
              }),
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.center,
              choiceItems: C2Choice.listFrom<int, String>(
                source: [
                  'Yes Currently',
                  'Yes, I did previously',
                  'No, never received treatment'
                ],
                value: (i, v) => i,
                label: (i, v) => v,
              ),
              choiceStyle: C2ChoiceStyle(
                showCheckmark: false,
                color: Colors.black38,
                backgroundColor: Colors.grey.withOpacity(0.3),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
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
    );
  }
}
