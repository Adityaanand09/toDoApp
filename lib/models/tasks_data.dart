import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier
{
  List<Task> _tasks = [
    Task(name:'buy milk'),
    Task(name:'buy soda'),
    Task(name:'buy cream'),
  ];
  UnmodifiableListView<Task> get tasks {//unmodifiable list
    return UnmodifiableListView(_tasks);
  }
int get taskCount{
  return _tasks.length;
}

void addTask(String newTaskTitle)
{
final task = Task(name:newTaskTitle);
_tasks.add(task);
  notifyListeners();
}

void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
}
void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
}

}