import 'package:flutter/material.dart';

ListTile TaskTile() {
  return ListTile(
    title: Text('first task'),
    trailing: Checkbox(value: false, onChanged: (bool? value) {  },),
  );
}
