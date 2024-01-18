import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String textData;
  final Color btnColor;

    const MyButton({
    required this.textData,
    this.btnColor = Colors.grey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: InkWell(
          onTap: (){},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: btnColor,
              shape: BoxShape.circle
            ),
            child: Center(child: Text(textData, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),)),
          ),
        ),
      ),
    );
  }
}