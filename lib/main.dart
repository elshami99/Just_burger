import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  get handleClick => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Just Burger'),
          backgroundColor: Colors.black87,
          actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Contact', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          
          ),
        ],
        
        ),
        backgroundColor: Colors.amber,
        body: const Center(
          child:Image(image:NetworkImage('https://th.bing.com/th/id/OIP.-Oeg-0y23meUoOHTZ9CwMgHaE8?pid=ImgDet&rs=1')) ),
      ),
    
      
    );
  }
}
