import 'package:flutter/material.dart';
import 'package:flutter_tasks_app_bloc/blocs/bloc_exports.dart';
import 'package:flutter_tasks_app_bloc/screens/recycle_bin.dart';
import 'package:flutter_tasks_app_bloc/screens/tasks_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Material(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Text(
                  'Task Drawer',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              BlocBuilder<TasksBloc, TasksState>(
                builder: (context, state) {
                  return ListTile(
                    leading: const Icon(Icons.folder_special),
                    title: const Text('My Tasks'),
                    trailing: Text('${state.allTasks.length}'),
                    onTap: () =>
                        Navigator.of(context).pushNamed(TasksScreen.id),
                  );
                },
              ),
              const Divider(),
              BlocBuilder<TasksBloc, TasksState>(
                builder: (context, state) {
                  return ListTile(
                    leading: const Icon(Icons.delete),
                    title: const Text('Trash Bin'),
                    trailing: Text('${state.removedTasks.length}'),
                    onTap: () => Navigator.of(context).pushNamed(RecycleBin.id),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
