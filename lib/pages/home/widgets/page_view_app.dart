import 'package:flutter/material.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {

  final double top;

  final ValueChanged<int> onChange;

  const PageViewApp({Key key, this.top, this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        onPageChanged: onChange,
        physics: BouncingScrollPhysics(), // efeito de elastico
        children: [
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}