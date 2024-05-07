import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/Services/firebase_auth_methods.dart';
import 'package:flutter_practice/firebase_options.dart';
import 'package:flutter_practice/register/login/home_details.dart';
import 'package:flutter_practice/register/login/login_details.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
        ),
        StreamProvider(
            create: (context) => context.read<FirebaseAuthMethods>().authState,
            initialData: null),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthStateChanges(),
      ),
    );
  }
}

class AuthStateChanges extends StatelessWidget {
  const AuthStateChanges({super.key});

  @override
  Widget build(BuildContext context) {
    final firebaseCurrentUser = context.watch<User?>();

    if (firebaseCurrentUser != null) {
      return const Home();
    }
    return const MyLogin();
  }
}
