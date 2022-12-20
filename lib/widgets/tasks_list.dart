import 'package:flutter/material.dart';
import 'package:flutter_tasks_app_bloc/models/task.dart';
import 'package:flutter_tasks_app_bloc/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.tasksList,
  }) : super(key: key);

  final List<Task> tasksList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          Task task = tasksList[index];
          return TaskTile(task: task);
        },
      ),
    );
  }
}
