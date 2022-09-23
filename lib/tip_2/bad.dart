import 'dart:math';

import 'package:flutter/material.dart';

class Bad extends StatefulWidget {
  const Bad({super.key});

  @override
  State<Bad> createState() => _BadState();
}

class _BadState extends State<Bad> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip 2 - Bad')),
      body: Stack(
        children: [
          Positioned.fill(child: _MyBackground()),
          Center(
            child: Text(
              counter.toString(),
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _MyBackground extends StatelessWidget {
  _MyBackground();

  @override
  Widget build(BuildContext context) {
    print('rebuilding custom painter...');
    return CustomPaint(
      painter: _MyPainter(),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const maxCircles = 20;
    final random = Random();
    for (int i = 0; i < maxCircles; i++) {
      final x = random.nextInt(size.width.toInt()).toDouble();
      final y = random.nextInt(size.height.toInt()).toDouble();
      canvas.drawCircle(Offset(x, y), 50.0,
          Paint()..color = Colors.primaries[i % Colors.primaries.length]);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
