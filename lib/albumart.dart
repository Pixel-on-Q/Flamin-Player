import 'package:flutter/material.dart';

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Image.asset(
            'images/albumArt.jpg',
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.red[50],
          borderRadius: BorderRadius.all(Radius.circular(21)),
          boxShadow: [
            BoxShadow(
              offset: Offset(12, 8),
              blurRadius: 8,
              color: Colors.black45,
              spreadRadius: 2,
            ),
            BoxShadow(
              offset: Offset(-12, -8),
              blurRadius: 8,
              color: Colors.white,
              spreadRadius: 2,
            ),
          ]),
    );
  }
}
