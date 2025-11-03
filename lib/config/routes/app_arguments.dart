// lib/core/config/routes/app_arguments.dart

class TicketDetailsArguments {
  final String ticketId;
  final String eventName;
  final DateTime eventDate;
  final double price;
  final int quantity;
  final String seatNumber;

  TicketDetailsArguments({
    required this.ticketId,
    required this.eventName,
    required this.eventDate,
    required this.price,
    required this.quantity,
    required this.seatNumber,
  });
}

class TicketReservationArguments {
  final String eventId;
  final String eventName;
  final DateTime? selectedDate;
  TicketReservationArguments({
    required this.eventId,
    required this.eventName,
    this.selectedDate,
  });
}

class HomeArguments {
  final String? userId;
  final bool showWelcome;
  final int initialTab;

  HomeArguments({
    this.userId,
    this.showWelcome = true,
    this.initialTab = 0,
  });
}

class AuthArguments {
  final String? redirectRoute;
  final dynamic redirectArguments;

  AuthArguments({
    this.redirectRoute,
    this.redirectArguments,
  });
}