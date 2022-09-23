import 'dart:ui';

import 'package:flutter/material.dart';

class Bad extends StatefulWidget {
  const Bad({super.key});

  @override
  State<Bad> createState() => _BadState();
}

class _BadState extends State<Bad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip 4 - Bad')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Using opacity
            Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),
            ),
            //backdrop filter
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://images7.alphacoders.com/310/310795.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                      child: Container(
                        color: Colors.blue.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
