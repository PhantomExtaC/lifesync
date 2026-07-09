# 🧬 LifeSync

**LifeSync** is a gamified, all-in-one lifestyle tracking application built with Flutter. It seamlessly integrates daily planning, health tracking, and interactive visualizations to help users stay on top of their hydration, sleep, nutrition, and daily tasks.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)

---

## ✨ Key Features

* **💧 Dynamic Hydration Tracker:** Interactive, animated water tank that updates in real-time as you log your daily intake.
* **✅ Gamified Daily Planner:** A rewarding task-management system where completing habits and daily tasks earns points.
* **📊 Visual Dashboards:** Beautiful UI with circular score rings and interactive charts for sleep quality, fuel, and activity.
* **🧠 AI-Powered Logging (Coming Soon):** Integration with Gemini/LLMs to automatically log food and nutritional data via natural language.
* **🔔 Smart Reminders:** Local notifications to keep you on track with your water intake and exercise goals.

---


## 🛠️ Tech Stack & Architecture

* **Framework:** [Flutter](https://flutter.dev/) (Material 3 Design)
* **State Management:** `provider` (Global AppState pattern)
* **Charts & Data:** `fl_chart`
* **Local Notifications:** `flutter_local_notifications`
* **Calendar UI:** `table_calendar`

### Folder Structure
Our project follows a clean, feature-first architecture:
```text
lib/
├── providers/        # Global state management (app_state.dart)
├── screens/          # Primary UI Views
│   ├── home/         # Dashboard & Stat Visuals
│   ├── plan/         # Calendar & Task List
│   ├── clock/        # Timers & Alarms
│   └── settings/     # App Configuration
├── widgets/          # Reusable UI components (ScoreRing, WaterTank)
└── theme/            # App-wide color schemes and typography
