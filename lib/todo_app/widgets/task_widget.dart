import 'package:flutter/material.dart';
//import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  final Function fun;
  final Task task;
  final VoidCallback? onClicked;
  const TaskWidget(this.task, this.fun, { required this.onClicked});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Row(
          children: [Checkbox(
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
        ),
        Expanded(
              child:Text(task.title),),
        IconButton(
          icon: Icon(Icons.delete, color: Colors.red, size: 32),
          onPressed: onClicked),
      ]
    ),);
  }


}
