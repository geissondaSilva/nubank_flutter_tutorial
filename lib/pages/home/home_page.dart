import 'package:flutter/material.dart';
import 'package:nubank_flutter_tutorial/pages/home/widgets/dots_app.dart';
import 'package:nubank_flutter_tutorial/pages/home/widgets/my_app_bar.dart';
import 'package:nubank_flutter_tutorial/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _showMenu;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MyAppBar(
            showMenu: _showMenu,
            onTap: (){
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp(
            top: _screenHeight * .24,
            onChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
            top: _screenHeight * .80,
            child: DotsApp(currentIndex: _currentIndex,),
          ),
        ],
      ),
    );
  }
}