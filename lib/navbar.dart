import 'package:flutter/material.dart';
import 'navitems.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 38.0, right: 38.0, top: 26),
      child: Container(
        height: 40,
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarItem(icon: Icons.arrow_circle_down_outlined),
            Text(
              'Playing Now',
              style:
                  TextStyle(color: Colors.black45, fontWeight: FontWeight.w600),
            ),
            NavBarItem(icon: Icons.list_alt_outlined),
          ],
        ),
      ),
    );
  }
}
