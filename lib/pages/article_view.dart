import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:share_plus/share_plus.dart';

class Article_View extends StatefulWidget {
  final blogUrl;
  Article_View({required this.blogUrl});

  @override
  _Article_ViewState createState() => _Article_ViewState();
}

class _Article_ViewState extends State<Article_View> {
  Completer<WebViewController> _controller = new Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            color: Colors.black,
            onPressed: () {
              Share.share(widget.blogUrl, subject: 'Checkout this news..');
            },
          ),
        ],
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.blogUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: ((WebViewController webViewController) {
            _controller.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
