import 'dart:convert';

import './model/point.model.dart';

void main() {
  Point p1 = Point(x: 10, y: 20);
  print(p1.toString());
  Point p2 = Point.fromArray([33, 65]);
  print(p2.toString());
  print(p1.distanceTo(p2).toStringAsFixed(2));
  print(p1.toJson());
  JsonEncoder jsonEncoder = JsonEncoder.withIndent("    ");
  print(jsonEncoder.convert(p1.toJson()));
  Map<String, dynamic> data = new Map();
  data['x'] = 54;
  data['y'] = 65;
  Point p3 = Point.fromJson(data);
  Point p4 = Point.fromJson({'x': 76, 'y': 58});
  print(p3.toString());
  print(p4.toString());
}
