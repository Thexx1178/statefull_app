import 'package:flutter/material.dart';
import 'dart:math';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _currentColor = Colors.blue; // เริ่มต้นเป็นสีฟ้า
  final List<Color> _colors =  [Colors.red, Colors.green, Colors.yellow, Colors.purple] ;// มีแค่สีฟ้า
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _currentColor = Colors.blue;
  }

  void _changeColor() {
    setState(() {
      _currentColor = _colors[_random.nextInt(_colors.length)];
    });
    print('Color changed to: $_currentColor');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: _currentColor,
        child: const Center(
          child: Text(
            'Tap me',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
