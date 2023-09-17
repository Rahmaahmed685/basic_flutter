

import 'package:flutter/material.dart';
import 'package:untitled/screens/confirm_screen.dart';


class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Forget Password",),
        ),

      body: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    //  crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    TextFormField(
      keyboardType: TextInputType.emailAddress,
    obscureText: true,
    decoration: const InputDecoration(
    labelText: 'Email',
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.email),
    ),
    ),

    const SizedBox(height: 10,),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const ConfirmScreen()),
            );},
          child: Text("Send OTP"),
          style: OutlinedButton.styleFrom(
              backgroundColor:Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(10)))),
          ),
        ),

    ]),
    ));
  }
}