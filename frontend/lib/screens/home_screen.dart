import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'dashboard_screen.dart';
import 'attendance_screen.dart';
import 'requests_screen.dart';
import 'chat_screen.dart';
import 'notifications_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    DashboardScreen(),
    AttendanceScreen(),
    RequestsScreen(),
    ChatScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    final theme = Theme.of(context);
    return Scaffold(
      // Remove default background, use a gradient instead
      backgroundColor: Colors.transparent,
      extendBody: true, // Let the body extend behind the navigation bar
      body: Stack(
        children: [
          // Gradient background for a modern mobile look
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF00BFAE), // Teal
                  Color(0xFFFF8C42), // Orange
                ],
              ),
            ),
          ),
          // Main content with padding for floating nav bar
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: _screens[_selectedIndex],
            ),
          ),
        ],
      ),
      // Floating action button for quick actions (e.g., add task, chat, etc.)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Example: open a modal or navigate to a new screen
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('FAB tapped!')),
          );
        },
        child: const Icon(Icons.add, size: 32),
        elevation: 12,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Floating bottom navigation bar with elevation and rounded corners
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: PhysicalModel(
          color: Colors.white.withOpacity(0.9),
          elevation: 20,
          borderRadius: BorderRadius.circular(32),
          shadowColor: Colors.black.withOpacity(0.15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white.withOpacity(0.9),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
                BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Attendance'),
                BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Requests'),
                BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
                BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: theme.colorScheme.primary,
              unselectedItemColor: theme.colorScheme.secondary.withOpacity(0.5),
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              showUnselectedLabels: true,
              selectedLabelStyle: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
              unselectedLabelStyle: theme.textTheme.labelMedium,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
} 