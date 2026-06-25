import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti7_flutter/helper.dart';
import 'package:nti7_flutter/home_view.dart';

class LoginVeiw extends StatefulWidget {
  const LoginVeiw({super.key});

  @override
  State<LoginVeiw> createState() => _LoginVeiwState();
}

class _LoginVeiwState extends State<LoginVeiw> {
  final userName = TextEditingController();
  final password = TextEditingController();
  bool passwordSecure = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
              child: Image.asset(
                'assets/images/flag.png',
                width: double.infinity,
                height: 300.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 23.h),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 22.r),
              child: Column(
                children: [
                  CustomTextfield(
                    hintText: "UserName",
                    controller: userName,
                    iconPrifix: SvgPicture.asset(
                      'assets/images/Profile.svg',
                      width: 17.r,
                      height: 20.r,
                    ),
                  ),
                  SizedBox(height: 10.h),

                  CustomTextfield(
                    hintText: "password",
                    controller: password,
                    obascureText: passwordSecure,
                    iconPrifix: SizedBox(
                      width: 24,
                      height: 24,
                      child: SvgPicture.asset('assets/images/Password.svg'),
                    ),

                    iconSuffix: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordSecure = !passwordSecure;
                        });
                      },
                      icon: Icon(passwordSecure ? Icons.lock : Icons.lock_open),
                    ),
                  ),
                  SizedBox(height: 23.h),
                   if(isLoading)
                  CircularProgressIndicator()
                else
                  CustomB(
                    text: 'Login',
                    onTap: isLoading? null : onLoginPressed,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  onLoginPressed() async{
    print('start calling api');
    setState(() {
      isLoading = true;
    });
    await getLogIn();
    setState(() {
      isLoading = false;
    });
  }





  Future getLogIn() async {
  try {
    var response = await dio.post(
      'login',
      data: FormData.fromMap({'username': userName.text, 'password': password.text}),
    );
    //كيفية اخذ Access Token And Refresh Token
    var mapResponse = response.data as Map<String, dynamic>;
    print(response.toString());
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Color(0xff149954),
        content: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white,),
            SizedBox(width: 10,),
            Text('Login Successfully\nWelcome', style: TextStyle(
              color: Colors.white
            ),),
          ],)));

          Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => HomeView( 
            username: mapResponse['user']['username'],
            imagePath: mapResponse['user']['image_path'],
            accessToken: mapResponse['access_token'],
          )),
          (r)=> false);
          
  } catch (e) {
     handleDioException(e, context);
  }
}
}


