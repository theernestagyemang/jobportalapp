import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Job Portal App'),
        ),
        body: WebView(initialUrl: "http://localhost/login/",
        javascriptMode:  JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController WebViewController){
          _controller = WebViewController;
        },
        ),
      ),
    );
  }
}