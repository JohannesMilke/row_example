import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Row Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('First', style: TextStyle(fontSize: 28)),
                Text('Second', style: TextStyle(fontSize: 28)),
                Text('Third', style: TextStyle(fontSize: 28)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('First', style: TextStyle(fontSize: 28)),
                Text('Second', style: TextStyle(fontSize: 28)),
                Text('Third', style: TextStyle(fontSize: 28)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('First', style: TextStyle(fontSize: 28)),
                Text('Second', style: TextStyle(fontSize: 28)),
                Text('Third', style: TextStyle(fontSize: 28)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('First', style: TextStyle(fontSize: 28)),
                Text('Second', style: TextStyle(fontSize: 28)),
                Text('Third', style: TextStyle(fontSize: 28)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('First', style: TextStyle(fontSize: 28)),
                Text('Second', style: TextStyle(fontSize: 28)),
                Text('Third', style: TextStyle(fontSize: 28)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text('First', style: TextStyle(fontSize: 28)),
                const SizedBox(width: 32),
                Text('Second', style: TextStyle(fontSize: 28)),
                const SizedBox(width: 8),
                Text('Third', style: TextStyle(fontSize: 28)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(color: Colors.red, height: 75, width: 100),
                Container(color: Colors.orange, height: 50, width: 100),
                Container(color: Colors.green, height: 100, width: 100),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.red, height: 75, width: 100),
                Container(color: Colors.orange, height: 50, width: 100),
                Container(color: Colors.green, height: 100, width: 100),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(color: Colors.red, height: 75, width: 100),
                Container(color: Colors.orange, height: 50, width: 100),
                Container(color: Colors.green, height: 100, width: 100),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'This text is really really long long long text',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'This text is really really long',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                RaisedButton(
                  child: Text('Click Me!'),
                  onPressed: () {
                    print('pressed');
                  },
                ),
              ],
            ),
          ],
        ),
      );
}
