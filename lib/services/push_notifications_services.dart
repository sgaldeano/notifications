import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsServices {

  static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  static String? token;
  static final StreamController<Map<String, dynamic>> _messageStreamController = StreamController.broadcast();

  static Stream<Map<String, dynamic>> get messageStream => _messageStreamController.stream;

  static Future initializeApp() async {
    // await requestPermission();

    //Push Notifications
    token = await firebaseMessaging.getToken();

    print(token);

    //Handlers
    FirebaseMessaging.onBackgroundMessage(_onBackgroundMessageHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedAppHandler);

    //Local Notifications
  }

  static Future _onBackgroundMessageHandler(RemoteMessage message) async {
    _messageStreamController.add(message.data);
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    _messageStreamController.add(message.data);
  }

  static Future _onMessageOpenedAppHandler(RemoteMessage message) async {
    _messageStreamController.add(message.data);
  }

  static closeStreams() {
    _messageStreamController.close();
  }

  //Just for Apple and Web
  /* This method displays the popup that ask the user to allow the app to receive
    push notifications */
  static requestPermission() async {
    NotificationSettings settings = await firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true
    );

    print('User push notification status ${settings.authorizationStatus}');
  }

}