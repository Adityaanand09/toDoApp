import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tasks_tile.dart';
import 'package:todoapp/models/tasks_data.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(
          taskTitle:Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        checkboxCallback:(checkboxState){
          Provider.of<TaskData>(context,listen: false).updateTask(Provider.of<TaskData>(context,listen: false).tasks[index]);


      },
        longPressCallback: (){
          Provider.of<TaskData>(context,listen: false).deleteTask(Provider.of<TaskData>(context,listen: false).tasks[index]);
        },
      );
    },itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
