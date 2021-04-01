import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final IconData icon;

  const NavBarItem({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.red[50],
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 3),
              color: Colors.black45,
              spreadRadius: 1,
              blurRadius: 6,
            ),
            BoxShadow(
              offset: Offset(-1, -2),
              color: Colors.white,
              spreadRadius: -1,
              blurRadius: 8,
            )
          ]),
      child: Icon(
        icon,
        color: Colors.red[300],
      ),
    );
  }
}
