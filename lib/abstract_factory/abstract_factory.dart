import 'package:flutter/material.dart';
import 'package:flutter_app/abstract_factory/component.dart';
import 'package:flutter_app/abstract_factory/cupertino.dart';
import 'package:flutter_app/abstract_factory/material.dart';

class AbstractFactory extends StatefulWidget {
  AbstractFactory({Key? key}) : super(key: key);

  @override
  _AbstractFactoryState createState() {
    return _AbstractFactoryState();
  }
}

class _AbstractFactoryState extends State<AbstractFactory> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void createButton(String? style) {
    Component component;

    switch (style) {
      case 'Cupertino':
        component = CupertinoStyle();
        break;
      default:
        component = MaterialStyle();
    }
    final button = component.createButton();
    final snackBar = SnackBar(content: Text(button.paint()));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abtract Factory'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                createButton("Material");
              },
              child: Text("Material Button"),
            ),
            TextButton(
              onPressed: () {
                createButton("Cupertino");
              },
              child: Text("Cupertino Button"),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
