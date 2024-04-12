import 'package:fastival_application/haders.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen(BuildContext context) {}

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(
        context,
        AppRoutes.intropage,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://i.pinimg.com/564x/be/0f/8b/be0f8b175a60ae9d9ecf92237e4bb184.jpg",
            ),
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: AssetImage("lib/assets/logo/logo.gif"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
