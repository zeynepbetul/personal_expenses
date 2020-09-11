import 'package:flutter/material.dart';

class Transactions {
  final String id;
  final String name;
  final DateTime date;
  final double price;

  Transactions(
      {@required this.id,
      @required this.name,
      @required this.date,
      @required this.price});
}
