import 'dart:async';
import 'package:flutter/material.dart';

class DelayedText extends StatefulWidget {
  final String text;
  final int delay;
  final TextStyle style;
  final TextAlign textAlign;

  DelayedText({required this.text, required this.delay, required this.style, required this.textAlign});

  @override
  _DelayedTextState createState() => _DelayedTextState();
}

class _DelayedTextState extends State<DelayedText> {
  late Future<void> _delay;
  bool _showText = false;

  @override
  void initState() {
    super.initState();
    _delay = Future.delayed(Duration(seconds: widget.delay));
    _delay.then((value) {
      setState(() {
        _showText = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _delay,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          return _showText ? Text(widget.text,style: widget.style,textAlign: widget.textAlign,
          ) : Container();
        }
      },
    );
  }
}