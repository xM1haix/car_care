import 'package:car_care_client/car_care_client.dart';
import 'package:car_care_flutter/functions/provider.dart';
import 'package:car_care_flutter/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProviderData()),
        ],
        child: const MyApp(),
      ),
    );

var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ProviderData>().themeMode;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Care',
      themeMode: themeMode,
      theme: ThemeData(),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF000000),
      ),
      home: const Home(),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<ProviderData>().init();
  }
}
