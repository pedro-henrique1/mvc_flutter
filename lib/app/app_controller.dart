import 'package:consume_api/app/interfaces/local_storage_iterface.dart';
import 'package:consume_api/app/models/appconfig_model.dart';
import 'package:consume_api/app/services/shared_local_storage_service.dart';
import 'package:flutter/src/foundation/change_notifier.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._() {
    storage.get('isDark').then((value) {
      config.themeSwitch.value = value;
    });
  }

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  final ILocalStorage storage = SharedLocalStorage();

  changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}
