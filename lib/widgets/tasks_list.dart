import 'package:flutter/material.dart';
import 'package:flutter_tasks_app_bloc/models/task.dart';

import '../blocs/bloc_exports.dart';

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
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              value: task.isDone,
              onChanged: (value) {
                context.read<TasksBloc>().add(UpdateTask(task: task));
              },
            ),
            onLongPress: () =>
                context.read<TasksBloc>()..add(DeleteTask(task: task)),
          );
        },
      ),
    );
  }
}
