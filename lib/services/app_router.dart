import 'package:flutter/material.dart';
import 'package:flutter_tasks_app_bloc/screens/recycle_bin.dart';
import 'package:flutter_tasks_app_bloc/screens/tasks_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RecycleBin.id:
        return MaterialPageRoute(builder: (context) => const RecycleBin());
      case TasksScreen.id:
        return MaterialPageRoute(builder: (context) => const TasksScreen());
      default:
        return null;
    }
  }
}
