import 'package:flutter/material.dart';
import 'package:flutter_application_2/SecondScreen.dart';
import 'package:flutter_application_2/input/InputScreen.dart';
import 'package:flutter_application_2/utils/ListItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Index Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<dynamic, dynamic>> _topic = [
    {'topic': 'Inputs', 'page': const InputScreen()},
    {'topic': 'Column', 'page': const SecondScreen()},
    {'topic': 'Row', 'page': const InputScreen()},
    {'topic': 'Button', 'page': const InputScreen()},
    {'topic': 'API', 'page': const InputScreen()},
    {'topic': 'Text', 'page': const InputScreen()},
    {'topic': 'List', 'page': const InputScreen()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _topic.length,
        itemBuilder: (context, index) {
          return ListItem(
              childText: _topic[index]['topic'],
              childClass: _topic[index]['page']);
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
