import 'package:get_it/get_it.dart';
import 'package:push_notification/core/services/current_location_service.dart';
import 'package:push_notification/core/services/map_controller_service.dart';
import 'package:push_notification/core/services/push_notification_service.dart';
import 'package:push_notification/core/services/navigation_service.dart';
import 'package:push_notification/core/view_models/map_view_model.dart';
import 'package:push_notification/core/view_models/start_up_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {

  locator.registerLazySingleton<PushNotificationService>( () => PushNotificationService() );
  locator.registerLazySingleton( () => NavigationService() );
  locator.registerLazySingleton( () => MapControllerService() );
  locator.registerLazySingleton( () => CurrentLocationService() );

  locator.registerFactory( () => StartUpModel() );
  locator.registerFactory( () => MapViewModel() );
  
}