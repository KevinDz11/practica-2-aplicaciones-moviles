import 'package:flutter/material.dart';
import '../models/iconic_moment.dart';

class IconicMomentScreen extends StatelessWidget {
  final IconicMoment iconicMoment;

  const IconicMomentScreen({super.key, required this.iconicMoment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(iconicMoment.title),
        backgroundColor: Colors.yellow[700],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(iconicMoment.imageUrl, height: 300),
              const SizedBox(height: 16),
              Text(
                iconicMoment.description,
                style: const TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}