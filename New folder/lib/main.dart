import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TestListView());
  }
}
class TaskModel {
  String? title;
  String? description;

  TaskModel({this.title,this.description});

}

List<String> usersNames = ['Alice', 'Bob', 'Charlie', 'David', 'Eve'];

List<Map<String, String>> tasks = [
  {
    'title': 'Task 1',
    'description': 'This is the description for Task 1',
  },
  {
    'title': 'Task 2',
    'description': 'This is the description for Task 2',
  },
  {
    'title': 'Task 3',
    'description': 'This is the description for Task 3',
  },
  {
    'title': 'Task 4',
    'description': 'This is the description for Task 4',
  },
  {
    'title': 'Task 5',
    'description': 'This is the description for Task 5',
  },
];

class TestListView extends StatelessWidget {
  const TestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Test")),
      body: Column(
        children: [
          Text(
            "Users List",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return UserItemBuilder(name: usersNames[index]);
              },
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemCount: usersNames.length,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Task List",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: ,
              itemBuilder: (context, index) => TaskItemBuilder(task: tasks[index]),
              separatorBuilder: (context, index) => Divider(),
            ),
          ),
          // Container(height: 800, width: 100, color: Colors.red),
        ],
      ),
    );
  }
}

class UserItemBuilder extends StatelessWidget {
  const UserItemBuilder({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 30, backgroundColor: Colors.red),
        SizedBox(height: 8),
        Text(name),
      ],
    );
  }
}

class TaskItemBuilder extends StatelessWidget {
  const TaskItemBuilder({super.key, required this.task});
  final Map<String, dynamic> task;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(radius: 30, backgroundColor: Colors.red),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task['title'] ?? "No Title",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  task['description'] ?? "No description available",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(height: 100, width: 100, color: Colors.red),
            // SizedBox(height: 100),
            // Expanded(child: Container(color: Colors.red)),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello ",
                    style: TextStyle(fontSize: 25),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // Spacer(),
                Icon(Icons.star, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}