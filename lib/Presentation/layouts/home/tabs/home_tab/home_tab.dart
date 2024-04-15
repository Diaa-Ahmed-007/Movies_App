import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../../core/reusable components/movie_card.dart';
import '../../../../../domain/entities/MovieDetailsEntitie.dart';


class home_tab extends StatelessWidget {
  const home_tab({super.key});
  @override
  Widget build(BuildContext context) {
    return
      Container( //color: Theme.of(context).colorScheme.onBackground,
        child:
        Column(
          children: [
            Padding(
              padding:  REdgeInsets.only(bottom: 5.sp),
              child: CarouselSlider.builder(
                  itemBuilder:(context,index ,index2)=>Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image(image: AssetImage("assets/images/cc.png"),fit: BoxFit.fill,width: double.infinity,),
                      Positioned(
                        // height: 400.h,
                        top:  100,
                        left: 10,
                        right: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage("assets/images/ii.png"),),
                            //  MovieCard(isFullView: true,movie: null,isLarge: true,isChecked:false ,),
                            Container(
                                padding: REdgeInsets.only(left: 10,top: 110),
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dora and the lost city of gold",style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize:15.sp ),),
                                    Text("2019  PG-13  2h 7m",style: Theme.of(context).textTheme.labelMedium)
                                  ],
                                ))

                          ],),
                      )
                    ],
                  ) ,
                  itemCount: 3,
                  options:CarouselOptions(
                    height:300.h,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    autoPlayInterval: Duration(seconds: 10),
                    enlargeFactor: 0.5,

                  )
              ),
            )],),
      )
    ;
  }

}