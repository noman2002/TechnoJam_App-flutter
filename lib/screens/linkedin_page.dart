import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LinkedPage extends StatefulWidget {
  LinkedPage({
    Key? key,
    required this.articleUrl,
  }) : super(key: key);

  final String articleUrl;

  @override
  _LinkedPageState createState() => _LinkedPageState();
}

class _LinkedPageState extends State<LinkedPage> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF233C4D),
        title: Text(
          "Linkedin",
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebView(
          initialUrl: widget.articleUrl,
          onWebViewCreated: ((WebViewController webViewController) {
            _completer.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
