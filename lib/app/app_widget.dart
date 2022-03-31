import 'package:consume_api/app/controller/app_controller.dart';
import 'package:consume_api/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: AppController.instance.themeSwitch,
        builder: (context, isDark, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                brightness: isDark ? Brightness.dark : Brightness.light),
            home: const HomePage(),
          );
        });
  }
}
