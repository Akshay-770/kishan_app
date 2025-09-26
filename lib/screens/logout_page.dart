import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Show the "Successfully Logged Out" popup after frame build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text("Logout"),
          content: const Text("You are successfully logged out."),
          actions: [
            TextButton(
              onPressed: () {
                // Navigate to login page or close dialog
                Navigator.of(ctx).pop();
                // Optional: Navigate to login/signin screen after logout
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(builder: (_) => const SignInPage()),
                // );
              },
              child: const Text("OK"),
            ),
          ],
        ),
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xFFFFD166),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.logout, color: Colors.orange, size: 50),
            const SizedBox(height: 22),
            const Text(
              "Logging Out...",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Thank you for using the app!",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
