import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key ?key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  //for adding onesignal
  @override
  void initState(){
    super.initState();
    initPlatformState();
  }

  static final String oneSignalAppId = "/*app id*/";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }


  //this part
  Future<void> initPlatformState() async{
    OneSignal.shared.setAppId(oneSignalAppId);
  }
}
