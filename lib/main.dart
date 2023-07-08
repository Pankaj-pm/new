import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSwatch(
        //   brightness: Brightness.dark,
        // ),
        scrollbarTheme: ScrollbarThemeData(
          thickness: MaterialStatePropertyAll(10),
          thumbColor: MaterialStatePropertyAll(Colors.blue),
          trackColor: MaterialStatePropertyAll(Colors.black),
          trackVisibility: MaterialStatePropertyAll(true),
          thumbVisibility: MaterialStatePropertyAll(true),
          radius: Radius.circular(10),
          trackBorderColor: MaterialStatePropertyAll(Colors.black),
        ),
        textTheme: TextTheme(
            bodyMedium: TextStyle(color: Colors.black54, fontSize: 12),
            titleMedium: TextStyle(color: Colors.cyan, fontSize: 26),
            // bodySmall: TextStyle(color: Colors.cyan, fontSize: 9),
            displayMedium: TextStyle(
                color: Colors.blue, fontSize: 23, fontWeight: FontWeight.bold)),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
        ),
        scrollbarTheme: ScrollbarThemeData(
          thickness: MaterialStatePropertyAll(10),
          thumbColor: MaterialStatePropertyAll(Colors.white),
          trackColor: MaterialStatePropertyAll(Colors.black),
          trackVisibility: MaterialStatePropertyAll(true),
          thumbVisibility: MaterialStatePropertyAll(true),
          radius: Radius.circular(10),
          trackBorderColor: MaterialStatePropertyAll(Colors.black),
        ),
        textTheme: TextTheme(
            bodyMedium: TextStyle(color: Colors.white, fontSize: 12),
            titleMedium: TextStyle(color: Colors.cyan, fontSize: 26),
            // bodySmall: TextStyle(color: Colors.cyan, fontSize: 9),
            displayMedium: TextStyle(
                color: Colors.blue, fontSize: 23, fontWeight: FontWeight.bold)),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 25, color: Colors.red),
          ),
          Text(
            "New Flutter ankit ",
            style: TextStyle(fontSize: 25, color: Colors.red),
          ),
          Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 25, color: Colors.red),
          ),
          Text(
            "Other",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text("Dart"),
          Text("Flutter"),
          ListTile(
            title: Text("Title"),
            subtitle: Text("Sub Title"),
          ),
          Expanded(
            child: Scrollbar(
              thickness: 10,
              child: ListView.builder(
                itemBuilder: (context, index) => Text("data"),
                itemCount: 115,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
