import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // providerをインポート
import 'providers/counter_provider.dart'; // CounterProviderをインポート
import 'screens/home.dart'; // HomeScreenをインポート

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        // 必要であれば他のProviderを追加
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChangeNotifier Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // HomeScreen内でCounterProviderを使えるようにする
    );
  }
}
