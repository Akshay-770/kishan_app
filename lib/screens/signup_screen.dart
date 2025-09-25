import 'package:flutter/material.dart';

class signup_screen extends StatelessWidget {
  const signup_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFD166), // yellow background
        body: Center(
        child: SingleChildScrollView(
        child: Column(
        children: [
        const SizedBox(height: 40),
    Image.asset(
    "assets/icon/kisan_logo.png",
    height: 48,
    ),
    const SizedBox(height: 26),
    Container(
    margin: const EdgeInsets.symmetric(horizontal: 16),
    padding:
    const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
    BoxShadow(
    color: Colors.white.withOpacity(0.9),
    blurRadius: 48,
