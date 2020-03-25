import 'package:flutter/material.dart';
import 'package:push_notification/ui/shared/shared_style.dart';

class PushNotificationView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification View',
          style: appBarTitleStyle,
        ),
      ),
      body: Text('Notification body'),
    );
  }
}