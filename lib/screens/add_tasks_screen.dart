import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTasksScreen extends StatelessWidget {
  final myController = TextEditingController();
  final Function addTaskScreen;

  AddTasksScreen({required this.addTaskScreen});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            controller: myController,
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hoverColor: Colors.lightBlueAccent,
            ),
            cursorColor: Colors.lightBlueAccent,
            onChanged: (newValue) {
              newTaskTitle = newValue;
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          Builder(
            builder: (context) {
              return FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                  myController.clear();
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
