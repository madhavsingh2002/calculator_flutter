import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  String _input = '';
  String _result = '0';
  String _operation = '';
  double _firstOperand = 0.0;
  double _secondOperand = 0.0;

  String get input => _input;
  String get result => _result;

  void appendInput(String value) {
    if (_operation.isEmpty) {
      _firstOperand = double.tryParse(_input + value) ?? _firstOperand;
    } else {
      _secondOperand = double.tryParse(_input + value) ?? _secondOperand;
    }
    _input += value;
    notifyListeners();
  }

  void setOperation(String operation) {
    if (_input.isNotEmpty) {
      _firstOperand = double.parse(_input);
      _input = '';
      _operation = operation;
    }
    notifyListeners();
  }

  void calculate() {
    switch (_operation) {
      case '+':
        _result = (_firstOperand + _secondOperand).toString();
        break;
      case '-':
        _result = (_firstOperand - _secondOperand).toString();
        break;
      case 'X':
        _result = (_firstOperand * _secondOperand).toString();
        break;
      case '÷':
        if (_secondOperand != 0) {
          _result = (_firstOperand / _secondOperand).toString();
        } else {
          _result = 'Error';
        }
        break;
    }
    _input = '';
    _operation = '';
    _firstOperand = 0.0;
    _secondOperand = 0.0;
    notifyListeners();
  }

  void clear() {
    _input = '';
    _result = '0';
    _operation = '';
    _firstOperand = 0.0;
    _secondOperand = 0.0;
    notifyListeners();
  }

  void toggleSign() {
    if (_input.isNotEmpty) {
      if (_input.startsWith('-')) {
        _input = _input.substring(1);
      } else {
        _input = '-' + _input;
      }
      notifyListeners();
    }
  }

  void calculatePercentage() {
    if (_input.isNotEmpty) {
      _result = (double.parse(_input) / 100).toString();
      notifyListeners();
    }
  }
}
