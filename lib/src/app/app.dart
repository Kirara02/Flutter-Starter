import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_project/src/app/app_root.dart';
import 'package:starter_project/src/config/navigation.dart';
import 'package:starter_project/src/config/theme/themes.dart';
import 'package:starter_project/src/cubits/navigation_cubit.dart';
import 'package:starter_project/src/features/splash/view/splash_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurant v3',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: UXTheme.dark(),
        navigatorKey: navigatorKey,
        initialRoute: '/splash',
        routes: {
          "/splash": (context) => const SplashScreen(),
          "/home" : (context) => const AppRoot(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) {
            return Scaffold(
              appBar: AppBar(title: const Text('ERROR'), centerTitle: true),
              body: const Center(
                child: Text('Page not Found'),
              ),
            );
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
