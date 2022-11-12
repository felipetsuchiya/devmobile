import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'views/SeriePage.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationId = 'RNbqaesF7KBUQWLRNqLslSq9p6THSn69IACVzW5G';
  const keyClientKey = '4eoM4Fcv6SBmrWEPdKcRNw5helyslkIPZziykI5t';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true, debug: true);

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animai',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animai'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.deepOrange,
              child: InkWell(
                onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Series(title: 'Series'))
                    );
                }
              )
            ),
            Card(
                color: Colors.deepOrange,
                child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Series(title: 'Series'))
                      );
                    }
                )
            ),
            Card(
                color: Colors.deepOrange,
                child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Series(title: 'Series'))
                      );
                    }
                )
            ),
          ],
        )
      ),
    );
  }
}

