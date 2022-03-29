import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Fishpond extends StatelessWidget {
  const Fishpond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: "https://www.fishpond.com/",
        ),
      ),
    );
  }
}
