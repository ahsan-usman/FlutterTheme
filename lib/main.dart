import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urraan_theme_app/AppThemeNotifier.dart';
import 'package:urraan_theme_app/app_theme.dart';
import 'package:urraan_theme_app/screen_dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChangeNotifierProvider<AppThemeNotifier>
        (create: (context) => AppThemeNotifier(),
        lazy: false,
        child: Container(
          child: Consumer<AppThemeNotifier>(
            builder: (context, data, child){
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: Apptheme.Light_theme,
                darkTheme: Apptheme.dark_theme,
                themeMode: data.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
                home: ScreenDashboard(),
              );
            },
          ),
        ),
        ),
    );

  }
}
/*
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.dark_theme,
      home: ScreenDashboard(),
    );
 */