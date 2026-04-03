import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LifeSync Status", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Daily Vitals", style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 20),
            
            // The "Fuel" and "Awareness" Gauges
            Row(
              children: [
                _buildStatCard("Fuel (Food)", "80%", Colors.greenAccent, Icons.restaurant),
                const SizedBox(width: 15),
                _buildStatCard("Awareness", "65%", Colors.blueAccent, Icons.psychology),
              ],
            ),
            
            const SizedBox(height: 25),
            
            // The Water Tank
            const Text("Hydration Tracker", style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 15),
            _buildWaterTank(0.4), // 40% full
          ],
        ),
      ),
    );
  }

  // A functional widget to build the Fuel/Awareness cards
  Widget _buildStatCard(String title, String value, Color color, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFF1E293B),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 30),
            const SizedBox(height: 10),
            Text(value, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(title, style: const TextStyle(color: Colors.white54)),
          ],
        ),
      ),
    );
  }

  // The visual "Water Tank"
  Widget _buildWaterTank(double fillLevel) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // The "Water" inside
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: fillLevel,
              widthFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const Center(
            child: Text("40% Hydrated", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
        ],
      ),
    );
  }
}