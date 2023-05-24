import 'package:flutter/material.dart';
import 'package:s16_notifications/routing/app_routing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase/firebase_options.dart';
import 'pages/pages.dart';
import 'services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await PushNotificationsServices.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    PushNotificationsServices.messageStream.listen((data) {
        print('MyApp: $data');

        navigatorKey.currentState?.pushNamed(MessagePage.routeName, arguments: data);

        scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
            content: Text(data['product'] ?? 'No Data')
          )
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,
      initialRoute: AppRouting.initialRoute,
      routes: AppRouting.routes
    );
  }

}