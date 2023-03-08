import 'package:flutter/material.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';

class ChipChoice extends StatefulWidget {
  ChipChoice({
    super.key,
    required this.text,
    required this.source,
  });

  List<String> source;
  String text;

  @override
  State<ChipChoice> createState() => _ChipChoiceState();
}

class _ChipChoiceState extends State<ChipChoice> {
  List<String> source = [];
  late int value;
  String? text;

  @override
  void initState() {
    super.initState();
    source = widget.source;
    value = -1;
    text = widget.text ?? '!!!Enter Your Text/Question here!!!';
  }

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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
        const SizedBox(height: 10),
        ChipsChoice<int>.single(
          wrapped: true,
          padding: EdgeInsets.zero,
          value: value,
          onChanged: (val) => setState(() => value = val),
          choiceItems: C2Choice.listFrom<int, String>(
            source: source,
            value: (i, v) => i,
            label: (i, v) => v,
          ),
          choiceStyle: chipStyle,
          choiceActiveStyle: activeChipStyle,
        ),
      ],
    );
  }
}
