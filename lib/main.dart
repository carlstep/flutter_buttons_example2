import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'nothing clicked';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {
          setState(() {
            text = 'FAB Clicked';
          });
        },
        icon: Icon(
          Icons.add,
          size: 40,
        ),
        label: Text(
          'save',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.amber,
              ),
              onPressed: (() {
                setState(() {
                  text = 'Elevated Button Pressed';
                });
              }),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.save),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Save'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  text = 'TextButton clicked';
                });
              },
              child: Text('Ok'),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text('NO'),
                  onPressed: (() {
                    setState(() {
                      text = 'TextButton in ButtonBar clicked';
                    });
                  }),
                ),
                ElevatedButton(
                  child: Text('YES'),
                  onPressed: (() {
                    setState(() {
                      text = 'ElevatedButton in ButtonBar clicked';
                    });
                  }),
                ),
              ],
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.red,
              child: Text(
                'Enter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              onPressed: (() {
                setState(() {
                  text = 'MaterialButton clicked';
                });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
