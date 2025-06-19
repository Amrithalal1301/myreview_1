import 'package:flutter/material.dart';
import 'package:myreview_1/main.dart';
void main(){
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
void initState(){
  super.initState();

      Future.delayed(const Duration(seconds: 1),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MyHome()));

      });
      
      
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: ClipOval(child: Image.asset('assets/images/home_screen.jpg',fit: BoxFit.cover,)),
      )
      
      ,
    );
  }
}
