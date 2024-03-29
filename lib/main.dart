import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: ListView.builder(
      body: ListView.separated(
        itemCount: 88, //設定itemBuilder 大小
        separatorBuilder: (context, index){
          if(index == 0){
            return Divider(thickness: 4,);
          }
          return Divider();
        },
        // cacheExtent: 0, //調整緩衝區大小
        itemBuilder: (context, index) {
          //index參數, 決定在這個位置, 需要渲染出什麼樣的Widget
          print("building: $index");

          // return index % 2 == 0
          //     // ? Divider(thickness: 4,)
          //     ? Container(height: 4, color: Colors.red,)
          //     : Container(
          return Container(
                  // color: Colors.blue[(index %5)*100],
                  height: 60,
                  alignment: Alignment.center,
                  child: Text("$index"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
