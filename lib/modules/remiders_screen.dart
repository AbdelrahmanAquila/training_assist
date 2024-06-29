import 'package:flutter/material.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

final TextEditingController taskName = TextEditingController();
final TextEditingController taskSubName = TextEditingController();

void showForm(BuildContext context, int? itemKey) {
  showModalBottomSheet(
      context: context,
      builder: (_) => Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: taskName,
                  decoration: InputDecoration(hintText: 'Task Name'),
                ),
                TextField(
                  controller: taskSubName,
                  decoration: InputDecoration(hintText: 'Task SubName'),
                ),
                ElevatedButton(
                    onPressed: () async {
                      taskName.text = '';
                      taskSubName.text = '';
                      Navigator.of(context).pop();
                    },
                    child: Text('Add Task'))
              ],
            ),
          ));
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
