import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:minor_project/screens/home/home.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var focusNodeEmail = FocusNode();
  var focusNodePassword = FocusNode();
  bool isFocusedEmail = false;
  bool isFocusedPassword = false;

  @override
  void initState() {
    focusNodeEmail.addListener(() {
      setState(() {
        isFocusedEmail = focusNodeEmail.hasFocus;
      });
    });
    focusNodePassword.addListener(() {
      setState(() {
        isFocusedPassword = focusNodePassword.hasFocus;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 7.w,
                  vertical: 2.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        IconlyBroken.arrow_left,
                        size: 3.6.h,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Let\'s Sign You In',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Welcome Back',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'You\'ve have been missed!',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 0.8.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 0.3.h,
                      ),
                      decoration: BoxDecoration(
                        color:
                            isFocusedEmail ? Colors.white : Color(0xFFF1F0F5),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFF2D2D4),
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          if (isFocusedEmail)
                            BoxShadow(
                              color: Color(0xFF835DF1).withOpacity(.3),
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                            ),
                        ],
                      ),
                      child: TextField(
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Email address',
                        ),
                        focusNode: focusNodeEmail,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 0.8.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 0.3.h,
                      ),
                      decoration: BoxDecoration(
                        color: isFocusedPassword
                            ? Colors.white
                            : Color(0xFFF1F0F5),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFF2D2D4),
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          if (isFocusedPassword)
                            BoxShadow(
                              color: Color(0xFF835DF1).withOpacity(.3),
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                            ),
                        ],
                      ),
                      child: TextField(
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey,
                            size: 16,
                          ),
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                        focusNode: focusNodePassword,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                              },
                              child: Text('Sign In'),
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Satoshi',
                                ),
                                backgroundColor: Color(0xFF835DF1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Color(0xFF835DF1),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
