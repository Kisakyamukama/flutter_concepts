import 'package:flutter/material.dart';
import 'package:flutter_concepts/ui/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TextScalePage(),
    );
  }
}

// safe area ona ny screen
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: SizeConfig.safeBlockVertical * 25,
          width: SizeConfig.safeBlockHorizontal * 55,
          color: Colors.black,
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Concepts'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: SizeConfig.blockSizeVertical * 20,
          width: SizeConfig.blockSizeHorizontal * 50,
          color: Colors.orange,
        ),
      ),
    );
  }
}

class TextScalePage extends StatefulWidget {
  @override
  _TextScalePageState createState() => _TextScalePageState();
}

class _TextScalePageState extends State<TextScalePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Text('Scaling text', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 10),),
      ),
    );
  }
}
