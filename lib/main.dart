import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'National Parks Tracker', home: FirstRoute());
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container _buildParkRow(String name) {
      return Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Expanded(child: Text(name, style: TextStyle(fontSize: 22))),
              Icon(Icons.info_outline, color: Theme.of(context).primaryColor),
              Icon(Icons.chevron_right)
            ],
          ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Expanded(child: Text('National Parks Tracker')),
          Icon(Icons.add)
        ]),
      ),
      body: ListView(
        children: [
          Container(
              child: _buildParkRow('Yellowstone'),
              padding: const EdgeInsets.only(top: 8)),
          _buildParkRow('Rocky Mountain'),
          _buildParkRow('Bryce Canyon'),
          Container(
              child: _buildParkRow('Canyon Lands'),
              padding: const EdgeInsets.only(bottom: 8)),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
