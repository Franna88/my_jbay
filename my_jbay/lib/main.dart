import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_jbay/commanUi/DifferentBottomNavbars/nav_with_now_on.dart';
import 'package:my_jbay/constants/navbar_controller.dart';
import 'package:provider/provider.dart';

import 'package:my_jbay/MainLandingPage/landingPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCQsH25T5ri_msQmlMyaNk8QHoobgdXD0k",
            authDomain: "my-jbay-app.firebaseapp.com",
            projectId: "my-jbay-app",
            storageBucket: "my-jbay-app.firebasestorage.app",
            messagingSenderId: "475469224311",
            appId: "1:475469224311:web:d40cfb541d230690382972"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavbarVisibilityProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}
