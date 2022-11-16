import 'package:eventbus/eventbus.dart';
import 'package:flutter/material.dart';
import 'package:micro_core/app/micro_core_utils.dart';

class AuthenticatorPage extends StatelessWidget {
  const AuthenticatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          children: [
            const TextField(),
            const TextField(),
            ElevatedButton(
              onPressed: () {
                EventBus.emit('Logou');
                navigatorKey.currentState?.pushReplacementNamed('/home');
              },
              child: const Text("Entrar"),
            )
          ],
        ),
      ),
    );
  }
}
