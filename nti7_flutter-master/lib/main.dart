import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nti7_flutter/login_veiw.dart';
import 'package:nti7_flutter/splash_view.dart';
import 'package:nti7_flutter/test_widgets.dart';
import 'package:nti7_flutter/welcome_veiw%20.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xffF3F5F4),
            fontFamily: 'Lexend_Deca',
            colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff149954)),
          ),
          home: SplashView(),
          // home:WelcomeVeiw(),
          // home : LoginVeiw()
          // home: LetStartView(),
        );
      },
    );
  }
}
