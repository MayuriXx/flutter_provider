import 'package:flutter/material.dart';
import 'package:flutter_provider/data/model/ui.dart';
import 'package:flutter_provider/presentation/drawer_menu.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Settings'),
      ),
      drawer: DrawerMenu(),
      body: Consumer<UI>(builder: (context, ui, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text(
                'Font Size: ${ui.fontSize.toInt()}',
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                ),
              ),
            ),
            Slider(
                min: 0.5,
                value: ui.sliderFontSize,
                onChanged: (newValue) {
                  ui.fontSize = newValue;
                }),
          ],
        );
      }),
    );
  }
}
