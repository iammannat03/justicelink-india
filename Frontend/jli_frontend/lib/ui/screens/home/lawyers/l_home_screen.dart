import 'package:flutter/material.dart';

class LHomeScreen extends StatefulWidget {
  const LHomeScreen({super.key});

  @override
  State<LHomeScreen> createState() => _LHomeScreenState();
}

class _LHomeScreenState extends State<LHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Lawyer Home Screen'),
    );
  }
}