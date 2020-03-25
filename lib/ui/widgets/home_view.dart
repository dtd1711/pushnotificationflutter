import 'package:flutter/material.dart';
import 'package:push_notification/ui/shared/shared_style.dart';

class HomeView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home View',
          style: appBarTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Text("Home View Body"),
    );
  }
}