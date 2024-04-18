import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/constants.dart';

class CategoryWidget extends StatelessWidget {
  String title;
  String imageName;
  CategoryWidget({super.key,required this.title,required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5.r),
      elevation: 15,
      shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.24),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 100.h,
            width: 180.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              image: DecorationImage(image: AssetImage("${Constants.categoryImageBasePath}$imageName"),fit: BoxFit.fill)
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(5.r)
            ),
            height: double.infinity,
            width: double.infinity,
          ),
          Text(title,style: Theme.of(context).textTheme.titleMedium,)
        ],
      ),
    );
  }
}
