// lib/injection_container.dart
import 'package:bus_rapid_transit/config/routes/navigation_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Navigation Service
  getIt.registerLazySingleton<NavigationService>(() => NavigationServiceImpl());
}