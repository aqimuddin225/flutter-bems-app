import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Write your name here...', labelText: 'Your Name'),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                showDialog(
                  context: context, 
                  builder: (context){
                    return AlertDialog(
                      content: Text('Hello, $_name'),
                    );
                  });
              }, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
