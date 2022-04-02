import 'package:consume_api/app/models/appconfig_model.dart';
import 'package:flutter/src/foundation/change_notifier.dart' show ValueNotifier;

class AppController {
  static final AppController instance = AppController._();

  AppController._();

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  changeTheme(bool value) {
    config.themeSwitch.value = value;
  }
}
