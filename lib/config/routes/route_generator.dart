import 'package:bus_rapid_transit/features/auth/presentation/screens/login_screen.dart';
import 'package:bus_rapid_transit/features/auth/presentation/screens/signup_screen.dart';
import 'package:bus_rapid_transit/features/auth/presentation/screens/splash_screen.dart';
import 'package:bus_rapid_transit/features/auth/presentation/screens/success_screen.dart';
import 'package:bus_rapid_transit/features/home/presentation/screens/home_screen.dart';
import 'package:bus_rapid_transit/features/reservation/presentation/screens/ticket_details_screen.dart';
import 'package:bus_rapid_transit/features/reservation/presentation/screens/ticket_reservation_screen.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'app_arguments.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(
            arguments: args is AuthArguments ? args : null,
          ),
        );
      
      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(
            arguments: args is AuthArguments ? args : null,
          ),
        );

      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case AppRoutes.ticketReservation:
      if( args is TicketReservationArguments) {
        return MaterialPageRoute(
            builder: (_) => TicketReservation(arguments:args),
          );
      }
       return MaterialPageRoute(
            builder: (_) => TicketReservation(),
          );
        
      case AppRoutes.doneRegister:
          return MaterialPageRoute(
            builder: (_) => SuccessScreen(isRegisterSuccess: true),
          );
      case AppRoutes.doneLogin:
          return MaterialPageRoute(
            builder: (_) => SuccessScreen(isRegisterSuccess: false),
          );
      case AppRoutes.ticketDetails:
        if (args is TicketDetailsArguments) {
          return MaterialPageRoute(
            builder: (_) => TicketDetailsScreen(arguments: args),
          );
        }
       return MaterialPageRoute(
            builder: (_) => TicketDetailsScreen(),
          );
      default:
        return _errorRoute("Route ${settings.name} not found");
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(child: Text(message)),
      );
    });
  }
}