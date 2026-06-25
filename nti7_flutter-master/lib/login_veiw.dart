import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti7_flutter/helper.dart';


class LoginVeiw extends StatefulWidget {
  const LoginVeiw({super.key});

  @override
  State<LoginVeiw> createState() => _LoginVeiwState();
}

class _LoginVeiwState extends State<LoginVeiw> {
   final username = TextEditingController();

  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Center(
        child: Column(
          children: [
            ClipRRect(  
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r)
              ) , 
            child: 
             Image.asset('assets/images/flag.png',
             width: double.infinity,
             height: 300.h,
             fit: BoxFit.cover,
             ),
          ),
          SizedBox(height: 23.h,),
          CustomTextfield(
            hintText: "UserName", 
            controller: username,
            iconPrifix:SvgPicture.asset('assets/images/Profile.svg',
            width: 24.r,
            height: 24.r,) ,
            )



          ],
        ),
      ),
    );
  }
}
