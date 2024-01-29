import 'dart:async';
import 'dart:io';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:starter_project/src/utils/background_service.dart';
import 'package:starter_project/src/utils/notification_helper.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final NotificationHelper notificationHelper = NotificationHelper();
  final BackgroundService service = BackgroundService();

  service.initializeIsolate();

  if (Platform.isAndroid) {
    await AndroidAlarmManager.initialize();
  }

  await notificationHelper.initNotifications(flutterLocalNotificationsPlugin);

  runApp(await builder());
}
