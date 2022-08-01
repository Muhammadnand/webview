import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewPage extends StatefulWidget {
  const webviewPage({ Key? key, required String initialUrl, required JavascriptMode JavascriptMode }) : super(key: key);

  @override
  State<webviewPage> createState() => _webviewPageState();
}

class _webviewPageState extends State<webviewPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  Null get Webview => null;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Webview Page"),
      ),
      body: const webviewPage(
        initialUrl: "https://halalfoodtracer.studiow.co.id/",
        JavascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

class WebviewPage {
} 