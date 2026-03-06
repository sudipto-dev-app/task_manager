import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart' show TaskCard;

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Expanded(
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return TaskCard(taskStatus: 'Completed', chipColor: Colors.green,);
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 8);
            },
          ),
        ),
      ),
    );;
  }
}
