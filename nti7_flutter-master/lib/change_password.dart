import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nti7_flutter/helper.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

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

               SizedBox(height: 30),

              Padding(
                padding:  REdgeInsets.symmetric(horizontal: 20.r),
                child: Column(
                  children: [

                   CustomTextfield(hintText: 'Old Password',),

                     SizedBox(height: 20),

                    CustomTextfield(hintText: 'New Password'),

                     SizedBox(height: 20),

                    CustomTextfield(hintText: 'Confirm PasssWord'),

                     SizedBox(height: 30),

                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: 
                      CustomB(text: 'Save',
                      onTap :() {
                        
                      },)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}