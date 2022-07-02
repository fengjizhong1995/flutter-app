import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar ({required this.title, super.key});

  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,// in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, liner layout
      child: Row(
        children: [
          const IconButton(
            onPressed: null, 
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            onPressed: null, 
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Example Title',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          )
        ],
      ),
    );
  }
}

void main(List<String> args) {
  runApp(
    const MaterialApp(
      title: 'My app',
      home: SafeArea(
        child: MyScaffold(),
        ),
    )
  );
}

/*
void main(List<String> args) {
  runApp(
    const Center(
      child: Text(
        'Hello World!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
*/