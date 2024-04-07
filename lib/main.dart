import 'package:flutter/material.dart';
import 'package:movies_app/MyApp.dart';
import 'package:movies_app/core/DI/Di.dart';
import 'package:movies_app/core/api/api_manger.dart';

void main() async {
  ApiManger.init();
   configureDependencies(); 
   runApp(const MyApp());
}
