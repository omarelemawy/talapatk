

import 'package:talapatk/core/services/language_service.dart';

class ApiUrls {
  // static const String baseUrl = 'https://events.codeella.com/api';
  static const String baseUrl = 'http://192.168.1.10:8000/api';

  static String get deleteNotification => '$baseUrl/notifications/delete';
  static String get login => '$baseUrl/login';
  static String get updateProfile => '$baseUrl/profile/update';
  static String get logout => '$baseUrl/logout';
  static String get allUsers => '$baseUrl/events/users/all';
  static String get createNewEvent => '$baseUrl/events/create';
  static String get comingEvents => '$baseUrl/data/coming-events';
  static String get createUsersEvents => '$baseUrl/events/users/create';
  static String get allDevices => '$baseUrl/events/devices/all';
  static String get createDevices => '$baseUrl/events/devices/create';
  static String get eventsDetails => '$baseUrl/data/';
  static String get deleteDevices => '$baseUrl/events/devices/delete';
  static String get deleteUsers => '$baseUrl/events/users/delete';
  static String get updateUsersEvents => '$baseUrl/events/users/update';
  static String get completedEvents => '$baseUrl/data/completed-events';
  static String get savedEvents => '$baseUrl/events/saved-events';
  static String get allUsedDevices => '$baseUrl/events/devices/used';
  static String get createVarieties => '$baseUrl/events/varieties/create';
  static String get getVarieties => '$baseUrl/events/varieties/';
  static String get getUsersChat => '$baseUrl/chat/users-chat';
  static String get blockUsers => '$baseUrl/block';
  static String get mainData => '$baseUrl/data/counts';
  static String get userDetails => '$baseUrl/data/user/';
  static String get sendMessage => '$baseUrl/chat/send';
  static String get getChat => '$baseUrl/chat/';

  static String orderDelivered({required int orderId}) =>
      '$baseUrl/OrderDelivered/$orderId';

  static Map<String, String> getHeaders({String? token}) => {
        if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
        'Accept': 'application/json',
        "x-lang": LanguageService.to.savedLang.value
      };
}
