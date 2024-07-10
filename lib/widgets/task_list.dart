import 'package:flutter/material.dart';
import 'package:taskbuddy/widgets/task_tile.dart';

ListView TaskList() {
  return ListView(
    children: [
      TaskTile(),
      TaskTile(),
      TaskTile(),
    ],
  );
}