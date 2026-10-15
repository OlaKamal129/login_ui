import 'package:flutter/material.dart';
import 'package:inst_meters/screens/login_screen/login.dart';
// import 'package:inst_meters/screens/login_screen/login.dart';
import 'package:inst_meters/screens/meter_screen/meter_screen.dart';
import 'package:inst_meters/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,

      designSize: Size(402,749),
      builder: (context, child) => MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
      home: LoginScreen()
    ),
    );
  }
}
