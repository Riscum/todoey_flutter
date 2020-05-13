import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.getNumberOfTasks,
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkTask: (newValue) {
                  taskData.toggleCheck(index);
//                  Provider.of<TaskData>(context, listen: false)
//                      .toggleCheck(index);
                },
                deleteTask: () => taskData.deleteTask(index),
              );
            });
      },
    );
  }
}
