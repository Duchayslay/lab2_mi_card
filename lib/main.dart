import 'package:flutter/material.dart';

void main() {
  runApp(const MiCardApp());
}

class MiCardApp extends StatelessWidget {
  const MiCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MiCardPage(),
    );
  }
}

class MiCardPage extends StatelessWidget {
  const MiCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF5722),
      appBar: AppBar(
        title: const Text(
          'MiCard',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFD84315),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: const AssetImage('asset/flutter.jpg'),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'ThinkPad E14',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withValues(alpha: 0.9),
                    letterSpacing: 3.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  width: 160,
                  child: Divider(
                    color: Colors.white.withValues(alpha: 0.6),
                    thickness: 1.5,
                  ),
                ),
                const SizedBox(height: 14),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFFD84315),
                      size: 26,
                    ),
                    title: Text(
                      '+84 394 281 101',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF263238),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color(0xFFD84315),
                      size: 26,
                    ),
                    title: Text(
                      'flutter.developer@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF263238),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.code,
                      color: Color(0xFFD84315),
                      size: 26,
                    ),
                    title: Text(
                      'github.com/flutter-dev',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF263238),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
