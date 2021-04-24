import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final bool showMenu;

  final VoidCallback onTap;

  const MyAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top, // tamanho da status bar do aplicativo
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Flogospng.org%2Flogo-nubank%2F&psig=AOvVaw0RMB9Q_r55_efdhHOJsr0O&ust=1619378477556000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMjFw4rNl_ACFQAAAAAdAAAAABAV'),
                    SizedBox(width: 20,),
                    Text('Geisson', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  ],
                ),
                Icon(!showMenu ? Icons.expand_more : Icons.expand_less),
              ],
            ),
          ),
        ),
      ],
    );
  }
}