import 'package:errplus5_task/config/style/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.white,
                child: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  radius: 35,
                  backgroundImage: NetworkImage("https://creazilla-store.fra1.digitaloceanspaces.com/icons/7914927/man-icon-md.png"),
                ),
              ),

              Text("Mustafa Mahmoud"),
              Text("ID : 2043")
            ],
          ),
        ),
      ),
    );
  }
}
