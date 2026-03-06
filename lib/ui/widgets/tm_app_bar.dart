import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/update_profile_screen.dart';

class TMAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppbar({super.key, this.fromUpdateProfile});
  final bool? fromUpdateProfile;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined)),
      ],
      backgroundColor: Colors.green,
      title: Row(
        spacing: 8,
        children: [
          InkWell(
            onTap: () {
              if(fromUpdateProfile ?? false){
               return;
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdateProfileScreen()),
              );
            },
            child: CircleAvatar(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full name',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(color: Colors.white),
              ),
              Text(
                'sudipto@gmail.com',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
