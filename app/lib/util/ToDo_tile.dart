import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String TaskName;
  final bool taskCompleted;
  Function(bool?)? unchanged;

  const ToDoTile({super.key, required this.TaskName, required this.taskCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Text("Work On Buzz vid"),
            Checkbox(value: false, onChanged: onChanged)
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: (BorderRadius.circular(12))),
      ),
    );
  }
}
