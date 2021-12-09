import 'package:flutter/foundation.dart';

class AppThemeNotifier extends ChangeNotifier{
    bool isDarkModeOn = false;
    bool gettingThemeMode() => isDarkModeOn;

    void updateTheme(bool isDarkModeOn) async{
      this.isDarkModeOn = isDarkModeOn;
      notifyListeners();
    }
}