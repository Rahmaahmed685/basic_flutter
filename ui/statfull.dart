import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class IncrementDecrementScreen extends StatefulWidget {
  const IncrementDecrementScreen({super.key});

  @override
  State<IncrementDecrementScreen> createState() =>
      _IncrementDecrementScreenState();
}

class _IncrementDecrementScreenState extends State<IncrementDecrementScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "سبحه",
          ),
        ),
      ),
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 66, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed:() {
              setState(() {
                number=0;
              });
            } ,
            child: Icon(Icons.undo),),
          SizedBox(height: 15,),
          FloatingActionButton(
            onPressed:() {
            setState(() {
              number++;
            });
          } ,
          child: Icon(Icons.add),),
          SizedBox(height: 15,),
          FloatingActionButton(onPressed: (){

            setState(() {
              if(number>0){
                number--;
              }else{
                print(0);
              }
            }
          );
          } ,
            child: Icon(Icons.remove),),
        ],
      ),



    );
  }
}
