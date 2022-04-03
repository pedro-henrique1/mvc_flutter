import 'package:consume_api/app/services/shared_local_storage_service.dart';
import 'package:consume_api/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/src/foundation/change_notifier.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._() {
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(storage: SharedLocalStorage());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewModel.config.themeSwitch;
}
