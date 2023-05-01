import 'package:anxiety_go/pages/SignUpPageFour.dart';
import 'package:anxiety_go/pages/SignUpPageOne.dart';
import 'package:anxiety_go/pages/SignUpPageThree.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:transitioned_indexed_stack/transitioned_indexed_stack.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _controller = PageController(
    initialPage: 0,
  );

  int idx = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
          height: MediaQuery.of(context).size.height * 0.85,
          child: FadeIndexedStack(
            curve: Curves.easeInOut,
            index: idx,
            children: [SignUpPageOne(), SignUpPageThree(), SignUpPageFour()],
          )),
      SizedBox(height: 20),
      AnimatedSmoothIndicator(
          activeIndex: idx,
          count: 3,
          effect: ScrollingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: Color(0xffCFCFCF),
              activeDotColor: Color(0xff545454))),
      SizedBox(height: 20),
      Row(children: [
        SizedBox(width: 40),
        OutlinedButton(
          onPressed: () => setState(() {
            idx -= 1;
          }),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 40),
              foregroundColor: Color(0xff5152A7),
              side: BorderSide(color: Color(0xff5152A7))),
          child: Text(
            'Back',
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(width: 40),
        ElevatedButton(
          onPressed: () => setState(() {
            idx += 1;
          }),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 40),
              backgroundColor: Color(0xff5152A7)),
          child: Text(
            'Next',
            style: TextStyle(fontSize: 20),
          ),
        )
      ])
    ])));
  }
}
