import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
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
  Color _backgroundColor = Colors.white;
  void _changeBackground(c) {
    setState(() {
      _backgroundColor = c;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, right: 0, left: 0),
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 350, horizontal: 10),
          //color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            //mainAxisSize: MainAxisSize.max,

            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: () => _changeBackground(Colors.blue),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                icon: const Icon(Icons.palette_outlined),
                label: const Text(
                  "Blue",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FloatingActionButton.extended(
                onPressed: () => _changeBackground(Colors.red),
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                icon: const Icon(Icons.palette_outlined),
                label: const Text(
                  "Red",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FloatingActionButton.extended(
                onPressed: () => _changeBackground(Colors.yellow),
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                icon: const Icon(Icons.palette_outlined),
                label: const Text(
                  "Yellow",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          )),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {}, //_incrementCounter,
        backgroundColor: Colors.black,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
