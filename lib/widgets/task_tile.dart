import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkTask;
  final Function deleteTask;

  TaskTile({this.taskTitle, this.isChecked, this.checkTask, this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkTask,
        activeColor: Colors.lightBlueAccent,
      ),
      onLongPress: deleteTask,
    );
  }
}
