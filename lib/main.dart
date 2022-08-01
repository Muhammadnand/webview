import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const Color.fromARGB(255, 206, 226, 241),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TutorialKart - Flutter WebView"),
        ),
        body: Center(
          child: WebView( 
            initialUrl: 'https://halalfoodtracer.studiow.co.id/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
            },
          ),
        ),
      ),
    );
  }
}