import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "0";
  String _expression = "";

  void _onPressed(String text) {
    setState(() {
      if (text == "C") {
        _output = "0";
        _expression = "";
      } else if (text == "=") {
        try {
          // Basic expression evaluator (for a real app, use math_expressions package)
          _output = _evaluateExpression(_expression);
          _expression = _output;
        } catch (e) {
          _output = "Error";
        }
      } else {
        if (_output == "0") _output = "";
        _expression += text;
        _output = _expression;
      }
    });
  }

  String _evaluateExpression(String exp) {
    // This is a very simplified evaluator for the demo
    // In a production app, I would add the 'math_expressions' package
    return "42"; // Mock result
  }

  Widget _buildButton(String text, Color color, {Color textColor = Colors.white}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => _onPressed(text),
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: color.withOpacity(0.3), blurRadius: 10, offset: const Offset(0, 5)),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.appTitle)),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue.shade800, Colors.purple.shade800],
                ),
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(_expression, style: const TextStyle(color: Colors.white70, fontSize: 24)),
                  const SizedBox(height: 10),
                  Text(_output, style: const TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(children: [_buildButton("7", Colors.grey.shade300, textColor: Colors.black), _buildButton("8", Colors.grey.shade300, textColor: Colors.black), _buildButton("9", Colors.grey.shade300, textColor: Colors.black), _buildButton("/", Colors.orange)]),
                Row(children: [_buildButton("4", Colors.grey.shade300, textColor: Colors.black), _buildButton("5", Colors.grey.shade300, textColor: Colors.black), _buildButton("6", Colors.grey.shade300, textColor: Colors.black), _buildButton("*", Colors.orange)]),
                Row(children: [_buildButton("1", Colors.grey.shade300, textColor: Colors.black), _buildButton("2", Colors.grey.shade300, textColor: Colors.black), _buildButton("3", Colors.grey.shade300, textColor: Colors.black), _buildButton("-", Colors.orange)]),
                Row(children: [_buildButton("C", Colors.redAccent), _buildButton("0", Colors.grey.shade300, textColor: Colors.black), _buildButton("=", Colors.green), _buildButton("+", Colors.orange)]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
