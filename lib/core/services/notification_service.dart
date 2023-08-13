// import 'dart:convert';

// import 'package:al_nawaair/core/routes/app_pages.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:get/get.dart';

// import '/injector.dart' as di;
// import '../../firebase_options.dart';

// class NotificationService extends GetxService {
//   static NotificationService get to => Get.find();

//   Future<NotificationService> init() async {
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

//     FirebaseMessaging.onMessage.listen(showFlutterNotification);

//     if (!kIsWeb) {
//       await setupFlutterNotifications();
//     }
//     return this;
//   }

//   /// Create a [AndroidNotificationChannel] for heads up notifications
//   late AndroidNotificationChannel channel;

//   /// Initialize the [FlutterLocalNotificationsPlugin] package.
//   late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
//   bool isFlutterLocalNotificationsInitialized = false;

//   Map<String, dynamic>? data;
//   Future<void> setupFlutterNotifications() async {
//     if (isFlutterLocalNotificationsInitialized) {
//       return;
//     }
//     channel = const AndroidNotificationChannel(
//       'high_importance_channel', // id
//       'High Importance Notifications', // title
//       description:
//           'This channel is used for important notifications.', // description
//       importance: Importance.high,
//     );

//     flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//     /// Create an Android Notification Channel.
//     ///
//     /// We use this channel in the `AndroidManifest.xml` file to override the
//     /// default FCM channel to enable heads up notifications.
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);

//     final DarwinInitializationSettings initializationSettingsDarwin =
//         DarwinInitializationSettings(
//       requestAlertPermission: false,
//       requestBadgePermission: false,
//       requestSoundPermission: false,
//       onDidReceiveLocalNotification:
//           (int id, String? title, String? body, String? payload) async {},
//     );

//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('launch_background');
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsDarwin,
//     );
//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: notificationTapBackground,
//       onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
//     );

//     /// Update the iOS foreground notification presentation options to allow
//     /// heads up notifications.
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//     isFlutterLocalNotificationsInitialized = true;
//   }

//   void showFlutterNotification(RemoteMessage message) {
//     data = message.data;

//     RemoteNotification? notification = message.notification;
//     AndroidNotification? android = message.notification?.android;
//     if (notification != null && android != null && !kIsWeb) {
//       flutterLocalNotificationsPlugin.show(
//         notification.hashCode,
//         notification.title,
//         notification.body,
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             channel.id,
//             channel.name,
//             channelDescription: channel.description,
//             icon: 'launch_background',
//           ),
//         ),
//       );
//     }
//   }
// }

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   await di.init();
// }

// void notificationTapBackground(NotificationResponse notificationResponse) {
//   if (NotificationService.to.data != null) {
//     if (NotificationService.to.data!['type'] == 'chat') {
//       var customer = jsonDecode(NotificationService.to.data!['from_user_id']);
//       Get.toNamed(
//         Routes.messageScreen,
//         arguments: {
//           'id': customer,
//         },
//       );
//     }
//   }
// }
