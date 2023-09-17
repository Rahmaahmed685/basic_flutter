import 'package:flutter/material.dart';
import 'package:untitled/screens/forget_screen.dart';


class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Forget Password",
        )
        ,
      )
      ,

      body
          :
      Padding
        (
        padding
            :
        const
        EdgeInsets
            .
        all
          (
            10.0
        )
        ,
        child
            :
        Column
          (
          //mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
            children
                :
            [
              SizedBox
                (
                height
                    :
                5
                ,
              )
              ,
              TextFormField
                (
                obscureText:

                true
                ,
                decoration
                    :
                const
                InputDecoration
                  (
                  prefixIcon
                      :
                  Icon
                    (
                      Icons
                          .
                      code
                  )
                  ,
                  labelText
                      :
                 "OTP"
                  ,
                  border
                      :
                  OutlineInputBorder
                    (
                  )
                  ,
                )
                ,
              )
              ,
              SizedBox
                (
                height
                    :
                10
                ,
              )
              ,
              TextFormField(
                obscureText: obscureText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        obscureText = !obscureText;
                        setState(() {});
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    )),
              ),


              SizedBox
                (
                height
                    :
                15
                ,
              )
              ,

              TextFormField
                (
                obscureText
                    :
                obscureText
                ,
                decoration
                    :
                InputDecoration
                  (
                  border
                      :
                  OutlineInputBorder
                    (
                  )
                  ,
                  prefixIcon
                      :
                  Icon
                    (
                      Icons
                          .
                      lock
                  )
                  ,
                  labelText
                      :
                  " confirm password"
                  ,
                  suffixIcon
                      :
                  IconButton
                    (
                    onPressed
                        :
                        () {
                      obscureText = !obscureText;
                      setState(() {});
                    },

                    icon: Icon(obscureText
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
              ),

              SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfirmScreen()),
                    );
                  },
                  child: Text("Rest Password"),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))))
                  ,
                )
                ,
              ),
            ]),
      ),
    );
  }
}
