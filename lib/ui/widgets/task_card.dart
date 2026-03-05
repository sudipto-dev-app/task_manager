import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {

  final String TaskStatus;
  final Color chipColor;
   const TaskCard({super.key, required this.TaskStatus, required this.chipColor,});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: Text('Title wil be here'),
      tileColor: Colors.white,
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text('Description of Task'),
          Text(
            'Date : 12/10/2001',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Chip(
                label: Text(TaskStatus),
                backgroundColor: chipColor,
                labelStyle: TextStyle(
                    color: Colors.white
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            ],
          ),
        ],
      ),
    );
  }
}
