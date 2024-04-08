class Kstrings {
 
  static const String pusherCluster = "eu";
  static String getChatChannel({required int toUserId, required int chatId}) =>
      "chat-$toUserId-$chatId";
  static String getOrderChannel({required int driverId}) => 'order-$driverId';

  static const String countryCode = "+962";

  static String getUserChannel({required int driverId}) => 'user-app-$driverId';
}
