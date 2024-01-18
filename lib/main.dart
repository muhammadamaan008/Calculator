import 'package:calculator/components/my_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  child: const Text('data',
                      style: TextStyle(color: Colors.white))),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: const Column(
                    verticalDirection: VerticalDirection.up,
                    children: [
                      Row(
                        children: [
                          MyButton(textData: 'AC'),
                          MyButton(textData: '+/-'),
                          MyButton(
                            textData: '%',
                          ),
                          MyButton(
                            textData: '/',
                            btnColor: Colors.orange,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(textData: '7'),
                          MyButton(textData: '8'),
                          MyButton(textData: '9'),
                          MyButton(
                            textData: '*',
                            btnColor: Colors.orange,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(textData: '4'),
                          MyButton(textData: '5'),
                          MyButton(textData: '6'),
                          MyButton(
                            textData: '-',
                            btnColor: Colors.orange,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(textData: '1'),
                          MyButton(textData: '2'),
                          MyButton(textData: '3'),
                          MyButton(
                            textData: '+',
                            btnColor: Colors.orange,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(textData: '0'),
                          MyButton(textData: '.'),
                          MyButton(textData: 'DEL'),
                          MyButton(
                            textData: '=',
                            btnColor: Colors.orange,
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
