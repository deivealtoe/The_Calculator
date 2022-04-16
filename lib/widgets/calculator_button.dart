import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {Key? key,
      required String text,
      required int fillColor,
      required int textColor,
      required double textSize,
      required Function callback})
      : _text = text,
        _fillColor = fillColor,
        _textColor = textColor,
        _textSize = textSize,
        _callback = callback,
        super(key: key);

  final String _text;
  final int _fillColor;
  final int _textColor;
  final double _textSize;
  final Function _callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(_fillColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          onPressed: () => _callback(_text),
          child: Text(
            _text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: _textSize,
                color: Color(_textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
