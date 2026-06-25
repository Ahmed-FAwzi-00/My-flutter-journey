import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti7_flutter/helper.dart';
import 'package:nti7_flutter/login_veiw.dart';

class WelcomeVeiw extends StatelessWidget {
  const WelcomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text('data\n haloo'),
            SizedBox(height: 90.h),
            SvgPicture.asset(
              'assets/images/onboarding.svg',
              height: 300.h,
              width: 500.w,
            ),
            SizedBox(height: 60.h),
                
            Center(
              child: Text(
                'Welcome To \n DO IT !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.h,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff24252C),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Center(
              child: Text(
                "Ready to conquer your tasks? Let's Do \n It together",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp, //
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6E6A7C),
                ),
              ),
            ),
            SizedBox(height: 68.h),
            CustomB(
              text: "let's Start",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder:
                   (context) => LoginVeiw()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
