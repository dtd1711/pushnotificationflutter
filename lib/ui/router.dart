import 'package:flutter/material.dart';
import 'package:push_notification/ui/widgets/push_notification_view.dart';
import 'package:push_notification/ui/views/map_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case 'notification':
    return _getPageRoute(
      routeName: settings.name,
      viewToShow: PushNotificationView()
    );
    case 'map':
    return _getPageRoute(
      routeName: settings.name,
      viewToShow: MapView()
    );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}
PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}