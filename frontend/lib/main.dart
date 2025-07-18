import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
import 'providers/auth_provider.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart'; // Added for SystemUiOverlayStyle

void main() {
  runApp(const TadbirApp());
}

class TadbirApp extends StatelessWidget {
  const TadbirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthProvider(),
      child: MaterialApp(
        title: 'Tadbir',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.light(
            primary: Color(0xFF3A5AFE), // Blue accent
            onPrimary: Colors.white,
            secondary: Color(0xFF232946), // Deep blue for nav
            onSecondary: Colors.white,
            background: Color(0xFFF6F7FB), // Light background
            onBackground: Color(0xFF232946),
            surface: Colors.white,
            onSurface: Color(0xFF232946),
            error: Color(0xFFFF5F5F),
            onError: Colors.white,
          ),
          scaffoldBackgroundColor: Color(0xFFF6F7FB),
          textTheme: GoogleFonts.montserratTextTheme(),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            foregroundColor: Color(0xFF232946),
            elevation: 0,
            titleTextStyle: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF232946),
            ),
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          cardTheme: CardThemeData(
            color: Colors.white,
            elevation: 8,
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            shadowColor: Colors.black.withOpacity(0.10),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            labelStyle: TextStyle(fontWeight: FontWeight.w500),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3A5AFE),
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xFF3A5AFE),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 12,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor: Color(0xFF3A5AFE),
            unselectedItemColor: Color(0xFF232946).withOpacity(0.5),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
            unselectedLabelStyle: GoogleFonts.montserrat(),
            elevation: 20,
          ),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
              TargetPlatform.fuchsia: FadeUpwardsPageTransitionsBuilder(),
            },
          ),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.dark(
            primary: Color(0xFF3A5AFE), // Blue accent
            onPrimary: Colors.white,
            secondary: Color(0xFF232946),
            onSecondary: Colors.white,
            background: Color(0xFF181A20), // Deep dark
            onBackground: Colors.white,
            surface: Color(0xFF232946),
            onSurface: Colors.white,
            error: Color(0xFFFF5F5F),
            onError: Colors.white,
          ),
          scaffoldBackgroundColor: Color(0xFF181A20),
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
          cardTheme: CardThemeData(
            color: Color(0xFF232946),
            elevation: 8,
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            shadowColor: Colors.black.withOpacity(0.20),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            filled: true,
            fillColor: Color(0xFF232946),
            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            labelStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.white70),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3A5AFE),
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xFF3A5AFE),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 12,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFF232946),
            selectedItemColor: Color(0xFF3A5AFE),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
            unselectedLabelStyle: GoogleFonts.montserrat(),
            elevation: 20,
          ),
        ),
        themeMode: ThemeMode.system,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('ar', ''),
        ],
        home: const AuthGate(),
        routes: {
          '/login': (_) => const LoginScreen(),
          '/register': (_) => const RegisterScreen(),
        },
      ),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    if (auth.token == null || auth.user == null) return const LoginScreen();
    return const HomeScreen();
  }
}
