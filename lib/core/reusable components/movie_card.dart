import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/core/constants.dart';
import 'package:movies_app/domain/entities/TopRatedEntitie.dart';
class MovieCard extends StatefulWidget {
  late double height;
  late double width;
  bool isFullView;
  bool? isLarge;
  late bool isChecked;
  TopRatedEntitie movie;
  MovieCard({super.key,required this.isFullView,this.isLarge,required this.movie,this.isChecked = false}){
    if(isFullView){
      if(isLarge??false){
        height = 199.h;
        width =129.w;
      }else{
        height = 127.74.h;
        width = 96.87.w;
      }
    }else{
      height = 186.h;
      width = 97.w;
    }
  }

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        InkWell(onTap: (){},
          child: Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(5),
              image: widget.isFullView? DecorationImage(image: NetworkImage("${Constants.imageBasePath}${widget.movie.posterPath}"),fit: BoxFit.fill,):null,
            ),
            child: widget.isFullView?null:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                          image:DecorationImage(image: NetworkImage("${Constants.imageBasePath}${widget.movie.posterPath}"),fit: BoxFit.fill)
                      )
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star_rate_rounded, color: Theme.of(context).colorScheme.primary,size: 15.sp),
                              SizedBox(width: 2.w),
                              Text(widget.movie.voteAverage.toString(),style:Theme.of(context).textTheme.titleSmall)
                            ],
                          ),
                          Container(
                              height: 10.h,
                              width: double.infinity,
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Text(widget.movie.title??"",style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 10)))),
                          SizedBox(height: 2.h),
                          Text("2018  R  1h 59m",style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 8)),
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            widget.isChecked = !widget.isChecked;
            setState(() {

            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset("assets/Icons/bookmark.svg",color: widget.isChecked?Theme.of(context).colorScheme.primary:Theme.of(context).colorScheme.onPrimaryContainer),
              Icon(widget.isChecked?Icons.check_rounded:Icons.add,color: Colors.white,size: 15)
            ],

          ),
        )
      ]
    );
  }
}
