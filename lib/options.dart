import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({
    required this.text,
    required this.good,
    required this.bad,
    super.key,
  });

  final Widget good;
  final Widget bad;
  final String text;

  void _onPressed(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 10);
    return Scaffold(
      appBar: AppBar(title: Text(text)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                'Bad',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => _onPressed(
                context,
                bad,
              ),
            ),
            separator,
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                'Good',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => _onPressed(
                context,
                good,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
