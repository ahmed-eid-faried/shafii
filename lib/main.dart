import 'package:flutter/material.dart';
import 'package:shafii/core/binding/bindings.dart';
import 'package:shafii/core/constant/apptheme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shafii/core/services/services.dart';
import 'package:shafii/routes.dart';
import 'package:provider/provider.dart';

void main() async {
  await initService();
  runApp(MultiProvider(providers: providers, child: const MyApp()));
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'shafii',
          theme: AppThemes.stdTheme,
          initialRoute: "/home",
          routes: routes,
        );
      },
    );
  }
}
