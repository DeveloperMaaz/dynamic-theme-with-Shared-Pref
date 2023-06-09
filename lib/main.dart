import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theming/features/presentation/constants/theme_data.dart';
import 'package:theming/features/presentation/dashboard/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:theming/features/provider/provider_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  final isDark = sp.getBool("is_dark") ?? false;

  runApp(MyApp(isDark: isDark));
}

class MyApp extends StatelessWidget {
  final bool isDark;

  const MyApp({super.key, required this.isDark});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeSetting(isDark),
        builder: (context, snapshot) {
          final data = Provider.of<ThemeSetting>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            // themeMode: data.currentTheme as ThemeMode,
            theme: data.currentTheme,
            //  darkTheme: ThemeData.dark(),
            home: const HomeScreen(),
          );
        });
  }
}
