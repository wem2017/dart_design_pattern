import 'package:flutter/material.dart';

import 'logistic.dart';
import 'road.dart';
import 'sea.dart';

class FactoryMethod extends StatefulWidget {
  FactoryMethod({Key? key}) : super(key: key);

  @override
  _FactoryMethodState createState() {
    return _FactoryMethodState();
  }
}

class _FactoryMethodState extends State<FactoryMethod> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _createTransport(String transport) {
    Logistic logistic;
    switch (transport) {
      case "Sea":
        logistic = Sea();
        break;
      default:
        logistic = Road();
    }

    final object = logistic.createTransport(null);
    print(object.deliver());
    final snackBar = SnackBar(content: Text(object.deliver()));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factory Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                _createTransport("Road");
              },
              child: Text("Road"),
            ),
            TextButton(
              onPressed: () {
                _createTransport("Sea");
              },
              child: Text("Sea"),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
