import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/tasks_list.dart';
import 'package:todoapp/models/tasks_data.dart';
import 'package:todoapp/models/task.dart';
String newTaskTitle='';
class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color:Colors.white,
            borderRadius:BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )
        ),
        child: Column(
          children:<Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color:Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                newTaskTitle = value;
                },
            ),
            FlatButton(
              child:Text(
                'Add',
              ),
              color: Colors.lightBlueAccent,
              onPressed: (){
                //Add task to list
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
                //(newTaskTitle);
              },
            ),
          ]
        ),
      ),

    );
  }
}