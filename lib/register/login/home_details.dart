import 'package:flutter/material.dart';
import 'package:flutter_practice/Services/firebase_auth_methods.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<FirebaseAuthMethods>().user;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello ${user.email}"),
            Text("Hello ${user.uid}"),
            ElevatedButton(
                onPressed: () {
                  context.read<FirebaseAuthMethods>().LogOutUser(context);
                },
                child: const Text("Log out")),
          ],
        ),
      ),
    );
  }
}
