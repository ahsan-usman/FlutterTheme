import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urraan_theme_app/AppThemeNotifier.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  _ScreenDashboardState createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  bool isValue=true;
  var dashboardChanges;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dashboardChanges = Provider.of<AppThemeNotifier>(context, listen: false);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
      //  backgroundColor: Colors.red,
        title: Text("Data"),
      ),
      body: Center(
        child: ListTile(
          leading: Icon(Icons.format_paint,
          color: Theme.of(context).iconTheme.color,
          ),
          title: Text("Change Theme"),

          trailing: Switch(
            value: Provider.of<AppThemeNotifier>(context).isDarkModeOn,
            onChanged: (boolVal){
              dashboardChanges.updateTheme(boolVal);

            },
          ),
        ),
      ),
    );
  }
}
