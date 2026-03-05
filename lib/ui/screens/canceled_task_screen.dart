import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart' show TaskCard;

class CanceledTaskScreen extends StatefulWidget {
  const CanceledTaskScreen({super.key});

  @override
  State<CanceledTaskScreen> createState() => _CanceledTaskScreenState();
}

class _CanceledTaskScreenState extends State<CanceledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Expanded(
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return TaskCard(TaskStatus: 'Canceled', chipColor: Colors.red);
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
