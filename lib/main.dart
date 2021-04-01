import 'package:flutter/material.dart';
import 'albumart.dart';
import 'controls.dart';
import 'navbar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: Page(),
  ));
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  double sliderval = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[50],
        body: Column(
          children: <Widget>[
            SizedBox(height: 25),
            NavigationBar(),
            SizedBox(height: 15),
            Container(
              height: 350,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return AlbumArt();
                },
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ANTEOLOGY',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 7),
                  Text('Cover Band',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
                ],
              ),
            ),
            SizedBox(height: 2),
            SliderTheme(
              data: SliderThemeData(
                  trackHeight: .8,
                  thumbColor: Colors.brown,
                  activeTrackColor: Colors.red[200],
                  inactiveTrackColor: Colors.greenAccent),
              child: Slider(
                value: sliderval,
                onChanged: (value) {
                  setState(() {
                    sliderval = value;
                  });
                },
                min: 1,
                max: 10,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Controls(),
          ],
        ));
  }
}
