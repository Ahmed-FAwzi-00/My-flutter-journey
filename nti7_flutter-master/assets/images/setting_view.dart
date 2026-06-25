import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),

                  const SizedBox(width: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello!",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Ahmed Saber",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 40),

              buildItem(
                icon: Icons.person_outline,
                title: "Profile",
                onTap: () {},
              ),

              const SizedBox(height: 20),

              buildItem(
                icon: Icons.lock_outline,
                title: "Change Password",
                onTap: () {},
              ),

              const SizedBox(height: 20),

              buildItem(
                icon: Icons.settings,
                title: "Settings",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        padding:  REdgeInsets.symmetric(horizontal: 20.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 10,
            )
          ],
        ),
        child: Row(
          children: [
            Icon(icon),
             SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
             Spacer(),
             Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}