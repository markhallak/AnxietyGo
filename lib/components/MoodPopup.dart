import 'package:flutter/material.dart';

class MoodPopup extends StatefulWidget {
  final void Function()? onClose;

  const MoodPopup({
    super.key,
    required this.onClose,
  });

  @override
  _MoodPopupState createState() => _MoodPopupState();
}

class _MoodPopupState extends State<MoodPopup> {
  // Define the current value of the slider
  double _currentValue = 4;

  // Define the colors for each value of the slider
  final Map<double, Color> _colorMap = {
    1: Colors.redAccent,
    2: Colors.orangeAccent,
    3: Colors.yellowAccent,
    4: Colors.lightGreenAccent,
    5: Colors.greenAccent,
  };

  // Define the emojis for each value of the slider
  final Map<double, String> _emojiMap = {
    1: '😢',
    2: '😕',
    3: '😐',
    4: '😊',
    5: '😁',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: AlertDialog(
        title: const Text('How are you feeling right now?'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              value: _currentValue,
              min: 1,
              max: 5,
              divisions: 4,
              label: _emojiMap[_currentValue],
              activeColor: _colorMap[_currentValue],
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
            Text(
              _emojiMap[_currentValue] ?? '',
              style: const TextStyle(fontSize: 50),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: widget.onClose,
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
