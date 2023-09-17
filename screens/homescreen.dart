import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> notes = ["1","2","3","4","5","6","7","8","9","10"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Home")),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child:Icon(Icons.add),
        ),
      body: ListView.builder(
        itemCount: notes.length, 
        itemBuilder: (context, index){
          print(index);
          return buildNoteItem(index);
        }
      
      
      
      )




      

    );
  }
  Widget buildNoteItem(int index){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],borderRadius: BorderRadius.circular(10),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child: Text(notes[index],
            style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  notes.removeAt(index);
                  setState(() {});
                },
                icon : Icon(Icons.delete),
                label: Text ("Delete"),
                style:ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.red,
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.edit),
                label: Text("Edit"),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
          ],)
        ],
      ),
    );
  }
}
