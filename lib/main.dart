import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/request_record.dart';
import 'theme/app_theme.dart';
import 'screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(RequestRecordAdapter());
  await Hive.openBox<RequestRecord>('requests');
  runApp(const LuxoRequestsApp());
}

class LuxoRequestsApp extends StatelessWidget {
  const LuxoRequestsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luxo requests',
      theme: buildAppTheme(),
      home: const MainScreen(),
    );
  }
}
