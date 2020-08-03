import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/models/tasks_data.dart';
import 'package:todoapp/widgets/tasks_list.dart';import 'add_task_screen.dart';

import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.lightBlueAccent,
      child:Icon(Icons.add),
        onPressed: (){
        showModalBottomSheet(context: context, builder:(context)=>AddTaskScreen());

        },
      ),
      body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width,
              color:Colors.lightBlueAccent,
              padding: EdgeInsets.only(top:60.0,left:30.0,right:30.0,bottom: 30.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                      backgroundColor:Colors.white,
                      radius: 30.0,
                      child: Icon(Icons.list,
                      size: 40.0,
                      color: Colors.lightBlueAccent,)),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  Text('Todoey',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),),
                  Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style:TextStyle(
                    color:Colors.white,
                      fontSize: 18.0
                    )
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 300.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0),bottomRight: Radius.circular(30.0),bottomLeft: Radius.circular(30.0))
                      ),
                      child: TaskList(),
                    ),
                  )

                ],
              ),
            ),

           /* Container(
              height: MediaQuery.of(context).size.height/2,
              width:MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0),bottomLeft:Radius.circular(30.0) )
              ),

            )*/
          ],

      ),
    );
  }
}



