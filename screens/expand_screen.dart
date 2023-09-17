
import 'package:flutter/material.dart';

class ExpandScreen extends StatelessWidget {
  const ExpandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(children: [
        Expanded(
          flex: 3,
            child: Container(color: Colors.black,)),
        Expanded(
            child: Container(height: 100,color: Colors.blue,)),

        Expanded(

            child: Row(
          children: [
            Expanded(child: Container(color: Colors.pink,)),
            Expanded(
              flex: 2,
                child: Container(color: Colors.blueGrey,)),
            Expanded(child: Container(color: Colors.red,)),
          ],
        )),
        Expanded(child: Container(height: 100,color: Colors.green,)),
      ],),










    );
  }
}
