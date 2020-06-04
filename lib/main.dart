import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mobile Verification'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/MobileVerification.jpg',
                width: 275.0
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Text('Verify Your Number',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              width: 300.0,
              child: Text('Please enter your mobile number to recieve a verification code. Carrier rates may apply',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18))
            ),
            Container(
                width: 300.0,
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 50.0,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide( //                   <--- left side
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: TextField(
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                            controller: TextEditingController(text: "+91"),
                            textAlign: TextAlign.center,
                            decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  top: 19.0,
                                  bottom: 17.0,
                                )
                            )
                        )
                    ),
                    Container(
                        width: 125.0,
                        child: TextField(
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 36),
                            controller: TextEditingController(text: "98100"),
                            decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.all(10.0)
                            )
                        )
                    ),
                    Container(
                        width: 125.0,
                        child: TextField(
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 36),
                            controller: TextEditingController(text: "98100"),
                            decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.all(10.0)
                            )
                        )
                    ),
                  ],
                )
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              width: 300.0,
              child: FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                disabledColor: Colors.red,
                disabledTextColor: Colors.white,
                splashColor: Colors.blueAccent,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "CONTINUE",
                  style: TextStyle(fontSize: 20.0),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    side: BorderSide(color: Colors.red)
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "NO, OTHER TIME",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
