import 'dart:ffi';

import 'package:flutter/material.dart';
import 'util/ToDo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //list of todo tasks
  List toDoList = [
    ["make tut", false,]
    ["hit the gym", false,]
 ];
  //checkbox method
  void checkBoxChanged(bool value, int index){
    
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('To Do'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile
          (taskName: toDoList[index][0], 
          taskCompleted: toDoList[index][1], 
          onChanged:(value) => checkBoxChanged;
          );
        },
      ),
    );
  }
}
