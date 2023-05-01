import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

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
      showCheckmark: false);
  final C2ChoiceStyle activeChipStyle = const C2ChoiceStyle(
      showCheckmark: false,
      color: Colors.black,
      borderColor: Color(0xff8CDBC0),
      backgroundColor: Color(0xffB0E7D6),
      borderRadius: BorderRadius.all(Radius.circular(15)));

  List<String> countries = ['a', 'abfd', 'b', 'c'];

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
          textAlign: TextAlign.start,
          style: TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 20),
        ),
        const SizedBox(height: 10),
        ChipsChoice<int>.single(
          wrapped: true,
          padding: EdgeInsets.zero,
          value: agesTag,
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
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
          textAlign: TextAlign.start,
          style: TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 20),
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
          'Occupation',
          textAlign: TextAlign.start,
          style: TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 20),
        ),
        const SizedBox(height: 10),
        SizedBox(
            height: 50,
            child: TypeAheadFormField(
              hideOnEmpty: true,
              hideOnError: true,
              hideOnLoading: true,
              hideSuggestionsOnKeyboardHide: true,
              textFieldConfiguration: TextFieldConfiguration(
                  autocorrect: false,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  )),
              itemBuilder: (context, itemData) {
                return ListTile(title: Text(itemData.toString()));
              },
              onSuggestionSelected: (Object? suggestion) {},
              suggestionsCallback: (pattern) {
                return getSuggestions(pattern);
              },
            )), // TODO: Replace w/ component from Issue #33
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
          textAlign: TextAlign.start,
          style: TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 20),
        ),
        const SizedBox(height: 10),
        SizedBox(
            height: 50,
            child: TypeAheadFormField(
              hideOnEmpty: true,
              hideOnError: true,
              hideOnLoading: true,
              hideSuggestionsOnKeyboardHide: true,
              textFieldConfiguration: TextFieldConfiguration(
                  autocorrect: false,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  )),
              itemBuilder: (context, itemData) {
                return ListTile(title: Text(itemData.toString()));
              },
              onSuggestionSelected: (Object? suggestion) {},
              suggestionsCallback: (pattern) {
                return getSuggestions(pattern);
              },
            )),
      ],
    );
  }

  List<String> getSuggestions(String pattern) {
    List<String> newSuggestions = [];
    print('PATTERN: $pattern LENGTH: ${pattern.length}');

    for (int i = 0; i < countries.length; i++) {
      if (countries[i].contains(pattern)) {
        newSuggestions.add(countries[i]);
      }
    }

    return newSuggestions;
  }

  Widget _buildTherapySelection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Are you seeking treatment for mental health?',
          textAlign: TextAlign.start,
          style: TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 20),
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
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'AnxietyGo',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontFamily: 'Figtree-Black', fontSize: 32),
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
