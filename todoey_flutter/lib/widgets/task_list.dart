import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<ListOfTasks>(builder: (context, listOfTasks, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = listOfTasks.tasks[index];
          return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                listOfTasks.updateTask(task);
              },
              deleteCallback: () {
                listOfTasks.deleteTask(task);
              });
        },
        itemCount: listOfTasks.taskCount,
      );
    });
  }
}
