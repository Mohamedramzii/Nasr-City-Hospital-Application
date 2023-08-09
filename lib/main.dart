import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/colors.dart';
import 'package:nasr_city_hosptial_app/presentation/views/splashView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'NCH',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
                background: Colors.grey.shade300,
              ),
              useMaterial3: true,
              appBarTheme: AppBarTheme(
                elevation: 0,
                  centerTitle: true,
                  backgroundColor: ColorsManager.kprimaryColor)),
          home: const SplashView()),
    );
  }
}
