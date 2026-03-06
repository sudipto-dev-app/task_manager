import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart' show TaskCard;
import 'package:task_manager/ui/widgets/task_count_by_status_card.dart'
    show TaskCountByStatusCard;

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Expanded(
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return TaskCard(taskStatus: 'Progressing', chipColor: Colors.orange,);
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 8);
            },
          ),
        ),
      ),
    );
  }
}

