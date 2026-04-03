import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lifesync/dashboard_page.dart';
import 'package:lucide_icons/lucide_icons.dart';


class NavigationHub extends StatefulWidget {
  const NavigationHub({super.key});

  @override
  State<NavigationHub> createState() => _NavigationHubState();
}

class _NavigationHubState extends State<NavigationHub> {
  int _selectedIndex = 0;

  // These will eventually be your separate feature files
  final List<Widget> _pages = [
    const DashboardPage(),
    const Center(child: Text('Planner (MEOW the spammer)')),
    const Center(child: Text('Clock (Pomodoro & Alarms deez nuts)')),
    const Center(child: Text('Health (BLE & Sleep)')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: const Color(0xFF1E293B),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: const Color(0xFF1E293B),
            color: Colors.white,
            activeColor: Colors.blueAccent,
            tabBackgroundColor: Colors.blueAccent.withOpacity(0.1),
            padding: const EdgeInsets.all(16),
            gap: 8,
            onTabChange: (index) {
              setState(() => _selectedIndex = index);
            },
            tabs: const [
              GButton(icon: LucideIcons.layoutDashboard, text: 'Home'),
              GButton(icon: LucideIcons.calendar, text: 'Plan'),
              GButton(icon: LucideIcons.timer, text: 'Clock'),
              GButton(icon: LucideIcons.activity, text: 'Health'),
            ],
          ),
        ),
      ),
    );
  }
}