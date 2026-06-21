import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeVeiw extends StatelessWidget {
  const WelcomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
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
                  fontWeight: FontWeight.w900,
                  color: Color(0xff149954),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Center(
              child: Text(
                "Ready to conquer your tasks? Let's Do \n It together",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.h,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6E6A7C),
                ),
              ),
            ),
            SizedBox(height: 68.h),
            Container(
              width: 331,
              height: 48,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:Color(0xff149954),
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff149954),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shadowColor: Color(0xff149954),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Let\'s Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 19.h,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
