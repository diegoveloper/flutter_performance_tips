import 'dart:ui';

import 'package:flutter/material.dart';

class Good extends StatefulWidget {
  const Good({super.key});

  @override
  State<Good> createState() => _GoodState();
}

class _GoodState extends State<Good> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip 4 - Good')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Using opacity
            Container(
              color: Colors.red.withOpacity(0.5),
              height: 200,
              width: 200,
            ),
            //backdrop filter
            SizedBox(
              height: 250,
              child: Container(
                color: Colors.red.withOpacity(0.2),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                  child: Image.network(
                      'https://images7.alphacoders.com/310/310795.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
