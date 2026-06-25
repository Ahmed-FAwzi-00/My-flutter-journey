import 'package:flutter/material.dart';
import 'package:nti7_flutter/helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Image.asset(
                "assets/images/flag.png",
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: 
                CustomTextfield(hintText: 'userName', )
              ),
            ],
          ),
        ),
      ),
    );
  }
}