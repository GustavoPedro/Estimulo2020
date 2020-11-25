import 'dart:async';
import 'dart:io';

import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  AboutPage({Key key, @required GlobalKey<ScaffoldState> scaffoldKey})
      : _scaffoldKey = scaffoldKey,
        super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            widget._scaffoldKey.currentState.openDrawer();
          },
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Sobre Nós"),
      ),
      body: WebView(
        initialUrl: 'https://www.estimulo2020.org/quem-somos/',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
