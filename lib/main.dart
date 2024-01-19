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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Expanded(
              flex: 1,
              child: Text('data', style: TextStyle(color: Colors.white)),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Column(
                    verticalDirection: VerticalDirection.up,
                    children: [
                      Row(
                        children: [
                          MyButton(
                            textData: 'AC',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '+/-',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '%',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '/',
                            btnColor: Colors.orange,
                            onBtnPress: () {},
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            textData: '7',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '8',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '9',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '*',
                            btnColor: Colors.orange,
                            onBtnPress: () {},
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            textData: '4',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '5',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '6',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '-',
                            btnColor: Colors.orange,
                            onBtnPress: () {},
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            textData: '1',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '2',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '3',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '+',
                            btnColor: Colors.orange,
                            onBtnPress: () {},
                          )
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            textData: '0',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '.',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: 'DEL',
                            onBtnPress: () {},
                          ),
                          MyButton(
                            textData: '=',
                            btnColor: Colors.orange,
                            onBtnPress: () {},
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
