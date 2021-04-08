import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChatBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
    child: WebView(
    initialUrl: "https://focusappss.com/Chatbot",
    javascriptMode: JavascriptMode.unrestricted,
    ),
    ),
    );
  }
}
