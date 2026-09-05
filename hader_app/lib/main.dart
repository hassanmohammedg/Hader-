import 'package:flutter/material.dart';

void main() {
  runApp(const HaderApp());
}

class HaderApp extends StatelessWidget {
  const HaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'حاضر!',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Arial',
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'حاضر!',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'نظام الحضور الجامعي',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 50),

                const Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                _loginButton(
                  icon: Icons.person,
                  title: 'طالب',
                ),

                const SizedBox(height: 15),

                _loginButton(
                  icon: Icons.groups,
                  title: 'منسق الدفعة',
                ),

                const SizedBox(height: 15),

                _loginButton(
                  icon: Icons.admin_panel_settings,
                  title: 'الإدارة',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton({
    required IconData icon,
    required String title,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 58,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
