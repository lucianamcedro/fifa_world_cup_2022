import 'package:fifa_album_flutter/core/config/env/env.dart';
import 'package:fifa_album_flutter/fifa_world_app.dart';
import 'package:flutter/material.dart';

void main() async {
  await Env.i.load();
  runApp(FifaWorldApp());
}
