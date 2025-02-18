import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  Future<void> splashToHome()async{
    await Future.delayed(const Duration(seconds: 2,),);
    if(mounted){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
    }
  }

  @override
  void initState() {
    super.initState();
    splashToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/bmi_splash.png'),
      ).animate().fadeIn(duration: 750.ms).fadeOut(delay: 1250.ms,duration: 750.ms),
    );
  }
}
