import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/calculator_button.dart';

class TheCalculator extends StatefulWidget {
  const TheCalculator({Key? key}) : super(key: key);

  @override
  State<TheCalculator> createState() => _TheCalculatorState();
}

class _TheCalculatorState extends State<TheCalculator> {
  int firstNumber = 0;
  int secondNumber = 0;
  String history = '';
  String textToDisplay = '';
  String result = '';
  String operation = '';

  void buttonOnClick(String buttonValue) {
    if (buttonValue == 'C') {
      textToDisplay = '';
      firstNumber = 0;
      secondNumber = 0;
      result = '';
    } else if (buttonValue == 'AC') {
      textToDisplay = '';
      firstNumber = 0;
      secondNumber = 0;
      result = '';
      history = '';
    } else if (buttonValue == '+/-') {
      if (textToDisplay[0] != '-') {
        result = '-' + textToDisplay;
      } else {
        result = textToDisplay.substring(1);
      }
    } else if (buttonValue == '<') {
      result = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (buttonValue == '+' ||
        buttonValue == '-' ||
        buttonValue == 'X' ||
        buttonValue == '/') {
      firstNumber = int.parse(textToDisplay);
      result = '';
      operation = buttonValue;
    } else if (buttonValue == '=') {
      secondNumber = int.parse(textToDisplay);

      if (operation == '+') {
        result = (firstNumber + secondNumber).toString();
        history = firstNumber.toString() +
            operation.toString() +
            secondNumber.toString();
      } else if (operation == '-') {
        result = (firstNumber - secondNumber).toString();
        history = firstNumber.toString() +
            operation.toString() +
            secondNumber.toString();
      } else if (operation == 'X') {
        result = (firstNumber * secondNumber).toString();
        history = firstNumber.toString() +
            operation.toString() +
            secondNumber.toString();
      } else if (operation == '/') {
        result = (firstNumber / secondNumber).toString();
        history = firstNumber.toString() +
            operation.toString() +
            secondNumber.toString();
      }
    } else {
      result = int.parse(textToDisplay + buttonValue).toString();
    }

    setState(() {
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        backgroundColor: const Color(0xFF383a78),
        appBar: AppBar(
          title: const Text('The Awesome Calc'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize: 26,
                      color: Color(0x66FFFFFF),
                    ),
                  ),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize: 52,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillColor: 0xFFFDE9D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  fillColor: 0xFFFDE9D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '<',
                  fillColor: 0xFFF4767A,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: 0xFFF4767A,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '7',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '9',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: 'X',
                  fillColor: 0xFFF4767A,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '4',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '6',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: 0xFFF4767A,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '1',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '3',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: 0xFFF4767A,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  fillColor: 0xFFFDE9D0,
                  textColor: 0xFF000000,
                  textSize: 22,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: 0xFFB0E0D4,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: 0xFFFDE9D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: 0xFFF4767A,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
