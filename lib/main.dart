import 'package:flutter/material.dart';
import 'tip_1/good.dart' as tip1;
import 'tip_1/bad.dart' as tip1;
import 'tip_2/good.dart' as tip2;
import 'tip_2/bad.dart' as tip2;
import 'tip_3/good.dart' as tip3;
import 'tip_3/bad.dart' as tip3;
import 'tip_4/good.dart' as tip4;
import 'tip_4/bad.dart' as tip4;
import 'tip_5/good.dart' as tip5;
import 'tip_5/bad.dart' as tip5;
import 'options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Performance Tips',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onPressed(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 10);
    return Scaffold(
      appBar: AppBar(title: const Text('Performance Tips')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              MaterialButton(
                color: Colors.blue,
                child: const Text(
                  'Tip 1',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => _onPressed(
                  context,
                  const Options(
                    text: 'Tip 1 - Const',
                    good: tip1.Good(),
                    bad: tip1.Bad(),
                  ),
                ),
              ),
              separator,
              MaterialButton(
                color: Colors.blue,
                child: const Text(
                  'Tip 2',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => _onPressed(
                  context,
                  const Options(
                    text: 'Tip 2 - RepaintBoundary',
                    good: tip2.Good(),
                    bad: tip2.Bad(),
                  ),
                ),
              ),
              separator,
              MaterialButton(
                color: Colors.blue,
                child: const Text(
                  'Tip 3',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => _onPressed(
                  context,
                  const Options(
                    text: 'Tip 3 - Slivers for long List',
                    good: tip3.Good(),
                    bad: tip3.Bad(),
                  ),
                ),
              ),
              separator,
              MaterialButton(
                color: Colors.blue,
                child: const Text(
                  'Tip 4',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => _onPressed(
                  context,
                  const Options(
                    text: 'Tip 4 - More tips',
                    good: tip4.Good(),
                    bad: tip4.Bad(),
                  ),
                ),
              ),
              separator,
              MaterialButton(
                color: Colors.blue,
                child: const Text(
                  'Tip 5',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => _onPressed(
                  context,
                  const Options(
                    text: 'Tip 5 - “lazy” IndexedStack',
                    good: tip5.Good(),
                    bad: tip5.Bad(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
