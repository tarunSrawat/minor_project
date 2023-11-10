import 'package:flutter/material.dart';
import 'package:minor_project/resources/theme/system_theme.dart';
import 'package:minor_project/screens/login/login.dart';
import 'package:minor_project/screens/login/login_user.dart';
import 'package:sizer/sizer.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType){
      return MaterialApp(
        home: SignInScreen(),
        title: "Cppc",
        debugShowCheckedModeBanner: false,
        theme: SystemTheme.light(),
        darkTheme: SystemTheme.dark(),
        themeMode: ThemeMode.system,
      );
    });
  }
}
