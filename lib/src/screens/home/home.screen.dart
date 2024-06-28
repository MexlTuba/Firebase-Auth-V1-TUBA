import 'package:flutter/material.dart';
import '../../controllers/auth_controller.dart';
import '../../dialogs/waiting_dialog.dart';
import '../../routing/router.dart';
import '../auth/login.screen.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/home';
  static const String path = "/home";
  static const String name = "Home Screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 94, 0, 149),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            minimumSize: const Size(150, 48),
          ),
          onPressed: () {
            WaitingDialog.show(context, future: AuthController.I.logout());
          },
          label: const Text('LOGOUT'),
        )
      ],
    );
  }
}
