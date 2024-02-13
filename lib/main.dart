import 'package:flutter/material.dart';
import 'package:flutterspot/views/side_menu_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterSpot',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFF121212),
        bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xFF121212)),
        primaryColor: Colors.black,
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.black,
          onPrimary: Theme.of(context).colorScheme.onPrimary,
          secondary: const Color(0xFF1DB954),
          onSecondary: Theme.of(context).colorScheme.onSecondary,
          error: Theme.of(context).colorScheme.error,
          onError: Theme.of(context).colorScheme.onError,
          background: Theme.of(context).colorScheme.background,
          onBackground: Theme.of(context).colorScheme.onBackground,
          surface: Theme.of(context).colorScheme.surface,
          onSurface: Theme.of(context).colorScheme.onSurface,
        ),
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            fontSize: 12.0,
            color: Color(0xFFE0E0E0),
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,
          ),
          bodyLarge: TextStyle(
            color: Color(0xFFE0E0E0),
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
          bodyMedium: TextStyle(
            color: Color(0xFFE0E0E0),
            letterSpacing: 1.0,
          ),
        ),
      ),
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                SideMenuView()
                // PlayListScreen
              ],
            ),
          ),
          Container(
            height: 84.0,
            width: double.infinity,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
