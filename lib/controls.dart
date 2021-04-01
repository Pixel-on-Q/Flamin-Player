import 'package:flutter/material.dart';

class Controls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Controlbtn(icon: Icons.repeat_one),
        Controlbtn(icon: Icons.skip_previous),
        Playbtn(playicon: Icons.play_arrow),
        Controlbtn(icon: Icons.skip_next),
        Controlbtn(icon: Icons.shuffle)
      ],
    ));
  }
}

//playbutton
class Playbtn extends StatelessWidget {
  final IconData playicon;

  const Playbtn({Key key, this.playicon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
              color: Colors.black45,
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(2, 6)),
          BoxShadow(
              color: Colors.white,
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(-2, -6))
        ]),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(playicon),
              ),
            ),
          ],
        ));
  }
}

//othercontrolbutton
class Controlbtn extends StatelessWidget {
  final IconData icon;

  const Controlbtn({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
              color: Colors.black45,
              blurRadius: 9,
              spreadRadius: 1,
              offset: Offset(2, 3)),
          BoxShadow(
              color: Colors.white,
              blurRadius: 9,
              spreadRadius: 1,
              offset: Offset(-2, -3))
        ]),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon),
              ),
            ),
          ],
        ));
  }
}
