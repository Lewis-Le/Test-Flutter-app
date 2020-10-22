import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //thiết kế thanh tittle bar phía trên
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My Flutter app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _text = '';


  //Hàm dùng để đếm số lần bấm button
  void _incrementCounter() {
    setState(() {
      _counter++;
      _text = 'Ban bam lan thu $_counter';
    });
  }


  //Xây dựng giao diện
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _text,   //phần văn bản hiển thị kết quả ra màn hình
            ),
            Text(
              '$_counter',   //Hiển thị số lần bấm dựa trên giá trị biến counter
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(   //phần nút bấm button
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.home),
      ),
    );
  }
}
