import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlackWellBook extends StatelessWidget {
  const BlackWellBook({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: "https://blackwells.co.uk/bookshop/home",
        ),
      ),
    );
  }
}
