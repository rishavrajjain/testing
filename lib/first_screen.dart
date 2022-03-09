import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  String detectString(List<String> strArr, String str) {
    if (strArr.contains(str)) {
      return str;
    }
    return 'String is not present';
  }

  @override
  Widget build(BuildContext context) {
    var a = [
      'hello',
      'myname',
      'rishav',
      'raj',
      'jain',
      'captain',
      'fresh',
      'dfdf',
      'dfd',
      'dfffff'
    ];
    List<Colours> colour = [
      Colours(color: "red", value: "oxb74093"),
      Colours(color: "green", value: "b74093"),
      
      Colours(color: "blue", value: "b74093"),
      Colours(color: "cyan", value: "b74093"),
      Colours(color: "magenta", value: "b74093"),
    ];
    a.removeAt(a.length - 1);
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Text(colour[index].color.toString()),
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        );
      },
      itemCount: colour.length,
    ));
  }
}

class Colours {
  String? color;
  String? value;

  Colours({this.color, this.value});

  Colours.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['value'] = this.value;
    return data;
  }
}
