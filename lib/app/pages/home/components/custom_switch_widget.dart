import 'package:consume_api/app/app_controller.dart';
import 'package:flutter/material.dart';

class SwitchCustom extends StatelessWidget {
  const SwitchCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
            value: AppController.instance.isDark,
            onChanged: (value) {
              AppController.instance.changeThemeViewModel.changeTheme(value);
            }),
      ),
    );
  }
}
