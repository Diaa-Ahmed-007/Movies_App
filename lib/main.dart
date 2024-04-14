import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/MyApp.dart';
import 'package:movies_app/core/DI/Di.dart';
import 'package:movies_app/core/api/api_manger.dart';

void main() async {
   ApiManger.init();
   configureDependencies();
   await ScreenUtil.ensureScreenSize();
   runApp(const MyApp());
}