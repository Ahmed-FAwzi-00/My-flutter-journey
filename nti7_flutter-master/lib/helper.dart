import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomB extends StatelessWidget {
  const CustomB({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return
    // Container(
    //   width: 331.r,
    //   height: 48.r,
    //   decoration: BoxDecoration(
    //     boxShadow: [
    //       BoxShadow(
    //         color: Color(0xff149954),
    //         offset: Offset(0, 5),
    //         blurRadius: 10.r,
    //         spreadRadius: 0,
    //       ),
    //     ],
    //   ),
    //   child: SizedBox(
    //     child: ElevatedButton(
    //       onPressed: () {
    //         onTap;
    //       },
    //       style: ElevatedButton.styleFrom(
    //         backgroundColor: Color(0xff149954),
    //         padding: REdgeInsets.symmetric(vertical: 12.r),
    //         shadowColor: Color(0xff149954),
    //         elevation: 5,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(14.r),
    //         ),
    //       ),
    //       child: Text(
    //         text,
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontWeight: FontWeight.w300,
    //           fontSize: 19.sp,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff149954),
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 0,
              color: Color(0xff149954),
            ),
          ],
        ),
        padding: REdgeInsets.symmetric(vertical: 12.r),
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 19.sp,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hintText, this.iconPrifix, this.iconSuffix,  this.obascureText = false, required this.controller});
  final String hintText;
  final Widget? iconPrifix;
  final Widget? iconSuffix;
  final bool obascureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 14.sp,
      ),
      obscureText: obascureText,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: iconPrifix,
        suffixIcon: iconSuffix,
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w200,
          color: Color(0xffCDCDCD),
          fontSize: 14.sp,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Color(0xffCDCDCD)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Color(0xffCDCDCD)),
        ),
      ),
    );
  }
}
