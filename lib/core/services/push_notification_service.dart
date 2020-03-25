
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_notification/core/services/navigation_service.dart';
import 'package:push_notification/locator.dart';

class PushNotificationService {

  final FirebaseMessaging _fmc = FirebaseMessaging();
  final NavigationService _navigationService = locator<NavigationService>();

  Future initialise() async{
    if(Platform.isIOS){
      _fmc.requestNotificationPermissions();
    }

    _fmc.configure(
      onMessage: (Map<String, dynamic> message) async{
        print("onMessage: $message");
      },
      onLaunch: (Map<String, dynamic> message) async{
        print("onLaunch: $message");
        _serialiseAndNavigate(message);
      },
      onResume: (Map<String, dynamic> message) async{
        print("onResume: $message");
        _serialiseAndNavigate(message);
      },
    );
  }
  void _serialiseAndNavigate(Map<String, dynamic> message) {
    var notificationData = message['data'];
    var view = notificationData['view'];

    if (view != null) {
      // Navigate to the create post view
      if (view == 'notification') {
        print("notification - naivgation");
        _navigationService.navigateAndReplaceTo(view);
      }
    }
  }
}