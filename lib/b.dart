import 'package:flutter/material.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'حاسبه',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController _numberController = TextEditingController();
  String _result = '';

  void _calculateMultiples() {
    int? number = int.tryParse(_numberController.text);
    if (number != null) {
      setState(() {
        _result = 'Multiples: ';
        for (int i = 1; i <= 10; i++) {
          _result += '${number * i} ';
        }
      });
    }
  }

  void _calculateFactorial() {
    int? number = int.tryParse(_numberController.text);
    if (number != null) {
      setState(() {
        _result = 'Factorial: ';
        int factorial = 1;
        for (int i = 1; i <= number; i++) {
          factorial *= i;
        }
        _result += factorial.toString();
      });
    }
  }

  void _clearResult() {
    setState(() {
      _result = '';
      _numberController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 157, 195, 214),
      appBar: AppBar(title: Text('Calculator')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter a number'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _calculateMultiples,
              child: Text('Calculate Multiples'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateFactorial,
              child: Text(
                'Calculate Factorial',
                style: TextStyle(color: const Color.fromARGB(255, 188, 71, 71)),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              _result,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            BackButton(
              color: const Color.fromARGB(255, 157, 147, 111),
            ),
            ElevatedButton(
              onPressed: _clearResult,
              child: Text('Clear'),
            ),
          ],
        ),
      ),
    );
  }
}
