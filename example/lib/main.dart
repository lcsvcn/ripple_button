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
  Flushbar? _flush;

  _showFlushbar(String message) {
    _flush?.dismiss();
    _flush = Flushbar(
      message: message,
      flushbarStyle: FlushbarStyle.FLOATING,
      margin: EdgeInsets.all(20.0),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      icon: Icon(
        Icons.info,
        size: 28.0,
        color: Colors.white,
      ),
      duration: Duration(seconds: 1),
      leftBarIndicatorColor: Colors.white,
    );
    _flush?.show(context);
  }

  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8185E2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RippleButton(
                "Yellow Button",
                padding: EdgeInsets.all(16),
                type: RippleButtonType.YELLOW,
                onPressed: () => {_showFlushbar("Clicked Yellow Button")},
              ),
              RippleButton(
                "Blue Translucent Button",
                padding: EdgeInsets.all(16),
                type: RippleButtonType.BLUE_TRANSLUCENT,
                onPressed: () => {_showFlushbar("Clicked Blue Translucent Button")},
              ),
              RippleButton(
                "White Translucent Button",
                padding: EdgeInsets.all(16),
                type: RippleButtonType.WHITE_TRANSLUCENT,
                icon: Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                onPressed: () => {_showFlushbar("Clicked White Translucent Button")},
              ),
              RippleButton(
                "Amber Button",
                type: RippleButtonType.AMBER,
                padding: EdgeInsets.all(16),
                onPressed: () {
                  _showFlushbar("Clicked Amber Button");
                },
              ),
              RippleButton(
                "Pink Button",
                type: RippleButtonType.PINK,
                padding: EdgeInsets.all(16),
                onPressed: () {
                  _showFlushbar("Clicked Pink Button");
                },
              ),
              RippleButton(
                "Green Light Whatsapp Button",
                type: RippleButtonType.GREEN_LIGHT_WHATSAPP,
                padding: EdgeInsets.all(16),
                onPressed: () {
                  _showFlushbar("Clicked Green Light Whatsapp Button");
                },
              ),
              RippleButton(
                "Green Dark Whatsapp Button",
                type: RippleButtonType.GREEN_DARK_WHATSAPP,
                padding: EdgeInsets.all(16),
                onPressed: () {
                  _showFlushbar("Clicked Green Dark Whatsapp Button");
                },
              ),
              RippleButton(
                "Red Gmail Button",
                type: RippleButtonType.RED_GMAIL,
                padding: EdgeInsets.all(16),
                onPressed: () {
                  _showFlushbar("Clicked Red Gmail Button");
                },
              ),
              RippleButton(
                "Blue Telegram Button",
                type: RippleButtonType.BLUE_TELEGRAM,
                padding: EdgeInsets.all(16),
                onPressed: () {
                  _showFlushbar("Clicked Blue Telegram Button");
                },
              ),
              RippleButton(
                isEnabled ? "Disable Custom Button" : "Enable Custom Button",
                padding: EdgeInsets.all(16),
                color: RippleButtonColor(
                  background: Colors.orange,
                ),
                border: RippleButtonBorder(
                  side: BorderSide(
                    color: Colors.yellowAccent,
                    width: 1.5,
                  ),
                ),
                style: RippleButtonStyle(
                  text: TextStyle(
                    color: Color(0xFF8185E2),
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.1,
                    wordSpacing: 0.5,
                  ),
                ),
                onPressed: () {
                  setState(() => {isEnabled = !isEnabled});
                  _showFlushbar(isEnabled ? "Enabled Button" : "Disabled Button");
                },
              ),
              RippleButton(
                isEnabled ? "Enabled Button" : "Disabled Button",
                isEnabled: isEnabled,
                padding: EdgeInsets.all(16),
                color: RippleButtonColor(
                  background: Colors.orange,
                ),
                style: RippleButtonStyle(
                  text: TextStyle(
                    color: Color(0xFF8185E2),
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.1,
                    wordSpacing: 0.5,
                  ),
                ),
                border: RippleButtonBorder(
                  side: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                ),
                onPressed: () => {
                  _showFlushbar("Clicked on Enable/Disable Button"),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
