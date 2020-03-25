
import 'package:flutter/material.dart';
import 'package:push_notification/core/services/navigation_service.dart';
import 'package:push_notification/locator.dart';
import 'package:push_notification/ui/views/start_up_view.dart';
import 'package:push_notification/ui/router.dart';

void main(){ 
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartUpView(),
      onGenerateRoute: generateRoute,
      navigatorKey: locator<NavigationService>().navigationKey,
    );
  }
}

