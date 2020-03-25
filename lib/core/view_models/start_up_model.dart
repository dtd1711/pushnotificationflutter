

import 'package:push_notification/core/services/navigation_service.dart';
import 'package:push_notification/core/services/push_notification_service.dart';
import 'package:push_notification/core/view_models/base_model.dart';
import 'package:push_notification/locator.dart';


class StartUpModel extends BaseModel {

  var _pushNotificationService = locator<PushNotificationService>();
  var _navigationService = locator<NavigationService>();
 

  Future handleStartUpView() async{
    await _pushNotificationService.initialise();

    _navigationService.navigateAndReplaceTo('map');
  }

}