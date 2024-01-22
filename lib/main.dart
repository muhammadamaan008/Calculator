import 'package:calculator/components/my_buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var userInput = '';
  var result = '';

  void concatenate(var input) {
    userInput += input;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(userInput.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white)),
                      Text(result.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white)),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.white,
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyButton(
                            textData: 'AC',
                            onBtnPress: () {
                              userInput = '';
                              result = '';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            textData: '+/-',
                            onBtnPress: () {
                              concatenate('+/-');
                            },
                          ),
                          MyButton(
                            textData: '%',
                            onBtnPress: () {
                              concatenate('%');
                            },
                          ),
                          MyButton(
                            textData: '/',
                            btnColor: Colors.orange,
                            onBtnPress: () {
                              concatenate('/');
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            textData: '7',
                            onBtnPress: () {
                              concatenate('7');
                            },
                          ),
                          MyButton(
                            textData: '8',
                            onBtnPress: () {
                              concatenate('8');
                            },
                          ),
                          MyButton(
                            textData: '9',
                            onBtnPress: () {
                              concatenate('9');
                            },
                          ),
                          MyButton(
                            textData: '*',
                            btnColor: Colors.orange,
                            onBtnPress: () {
                              concatenate('*');
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            textData: '4',
                            onBtnPress: () {
                              concatenate('4');
                            },
                          ),
                          MyButton(
                            textData: '5',
                            onBtnPress: () {
                              concatenate('5');
                            },
                          ),
                          MyButton(
                            textData: '6',
                            onBtnPress: () {
                              concatenate('6');
                            },
                          ),
                          MyButton(
                            textData: '-',
                            btnColor: Colors.orange,
                            onBtnPress: () {
                              concatenate('-');
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            textData: '1',
                            onBtnPress: () {
                              concatenate('1');
                            },
                          ),
                          MyButton(
                            textData: '2',
                            onBtnPress: () {
                              concatenate('2');
                            },
                          ),
                          MyButton(
                            textData: '3',
                            onBtnPress: () {
                              concatenate('3');
                            },
                          ),
                          MyButton(
                            textData: '+',
                            btnColor: Colors.orange,
                            onBtnPress: () {
                              concatenate('+');
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            textData: '0',
                            onBtnPress: () {
                              concatenate('0');
                            },
                          ),
                          MyButton(
                            textData: '.',
                            onBtnPress: () {
                              concatenate('.');
                            },
                          ),
                          MyButton(
                            textData: 'DEL',
                            onBtnPress: () {
                              setState(() {
                                userInput = userInput.substring(0,userInput.length-1);
                                // if(userInput.contains('+')) {
                                //   equalPress();
                                // }
                              });
                            },
                          ),
                          MyButton(
                            textData: '=',
                            btnColor: Colors.orange,
                            onBtnPress: () {
                              equalPress();
                              setState(() {});
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        )),
      ),
    );
  }

  void equalPress() {
    // String finalInput = userInput;
    // finalInput = finalInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(userInput);
    ContextModel cm = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, cm);

    result = eval.toString();
  }
}
