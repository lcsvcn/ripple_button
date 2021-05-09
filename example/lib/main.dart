import 'package:flutter/material.dart';
import 'package:ripple_button/ripple_button.dart';
import 'package:another_flushbar/flushbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _showFlushbar(String message) {
    final flush = Flushbar(
      message: message,
      flushbarStyle: FlushbarStyle.FLOATING,
      margin: EdgeInsets.all(20.0),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      icon: Icon(
        Icons.info,
        size: 28.0,
        color: Colors.white,
      ),
      duration: Duration(seconds: 2),
      leftBarIndicatorColor: Colors.white,
    );
    flush.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue[900],
              child: RippleButton(
                text: "Yellow Button",
                padding: EdgeInsets.all(16),
                type: RippleButtonType.YELLOW,
                onPressed: () => {_showFlushbar("Clicked Yellow Button")},
              ),
            ),
            Container(
              color: Colors.white,
              child: RippleButton(
                text: "Blue Translucent Button",
                padding: EdgeInsets.all(16),
                type: RippleButtonType.BLUE_TRANSLUCENT,
                onPressed: () =>
                    {_showFlushbar("Clicked Blue Translucent Button")},
              ),
            ),
            Container(
              color: Colors.black,
              child: RippleButton(
                text: "White Translucent Button",
                padding: EdgeInsets.all(16),
                type: RippleButtonType.WHITE_TRANSLUCENT,
                onPressed: () =>
                    {_showFlushbar("Clicked White Translucent Button")},
              ),
            ),
            Container(
              color: Colors.yellow,
              child: RippleButton(
                text: "Custom Button",
                padding: EdgeInsets.all(16),
                style: RippleButtonStyle(
                  color: RippleButtonColor(
                    background: Colors.red,
                  ),
                  text: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => {_showFlushbar("Clicked Custom Button")},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
