import 'package:calculator/Components/mykey.dart';
import 'package:calculator/Provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xFF5f5e6f),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: const Color(0xFFC2E2C5),
                  borderRadius: BorderRadius.circular(40.0)),
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    calculator.input,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                  ),
                  Text(
                    calculator.result,
                    style: const TextStyle(fontSize: 38, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyKey(
                  title: 'C',
                  backgroundColor: const Color(0xFF9095D5),
                  onTap: () => calculator.clear(),
                ),
                MyKey(
                  title: '+/-',
                  backgroundColor: const Color(0xFF9095D5),
                  onTap: () => calculator.toggleSign(),
                ),
                MyKey(
                  title: '%',
                  backgroundColor: const Color(0xFF9095D5),
                  onTap: () => calculator.calculatePercentage(),
                ),
                MyKey(
                  title: '÷',
                  backgroundColor: const Color(0xFFF17B81),
                  onTap: () => calculator.setOperation('÷'),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyKey(
                  title: '7',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('7'),
                ),
                MyKey(
                  title: '8',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('8'),
                ),
                MyKey(
                  title: '9',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('9'),
                ),
                MyKey(
                  title: 'X',
                  backgroundColor: const Color(0xFFF17B81),
                  onTap: () => calculator.setOperation('X'),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyKey(
                  title: '4',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('4'),
                ),
                MyKey(
                  title: '5',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('5'),
                ),
                MyKey(
                  title: '6',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('6'),
                ),
                MyKey(
                  title: '-',
                  backgroundColor: const Color(0xFFF17B81),
                  onTap: () => calculator.setOperation('-'),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyKey(
                  title: '1',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('1'),
                ),
                MyKey(
                  title: '2',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('2'),
                ),
                MyKey(
                  title: '3',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('3'),
                ),
                MyKey(
                  title: '+',
                  backgroundColor: const Color(0xFFF17B81),
                  onTap: () => calculator.setOperation('+'),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 178,
                  decoration: BoxDecoration(
                    color: const Color(0xFF817F99),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 228, 227, 227)
                            .withOpacity(0.8),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () => calculator.appendInput('0'),
                    child: const Center(
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                MyKey(
                  title: '.',
                  backgroundColor: const Color(0xFF817F99),
                  onTap: () => calculator.appendInput('.'),
                ),
                MyKey(
                  title: '=',
                  backgroundColor: const Color(0xFFF17B81),
                  onTap: () => calculator.calculate(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
