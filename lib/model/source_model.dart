import 'package:flutter/cupertino.dart';

class Source {
  Null id;
  String name;

  Source({this.id, required this.name});

  factory Source.fromJson (Map<String, dynamic> json) {
    return Source(id: json['id'], name:json['name']);
  }
}