import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';


class SliverCustomHeader implements SliverPersistentHeaderDelegate{

  SliverCustomHeader({this.minExtent,this.maxExtent});

  final double minExtent;
  final double maxExtent;



  double imageOpacity(double shrinkOffest){
    return 1.0 - max(0.0,shrinkOffest) / maxExtent;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Opacity(
          opacity: imageOpacity(shrinkOffset),
          child: Image.asset(
              'asset/images/burger.jpg',
              fit:BoxFit.cover
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: <Widget>[
                Icon(Icons.favorite_border,color: Colors.white,),
                SizedBox(width: 10,),
                Text("For you",style: TextStyle(fontSize:24,color: Colors.white,fontWeight: FontWeight.bold),)
              ],),
              SizedBox(height: 10,),
              Text("Always a good idea",style: TextStyle(fontSize:28,color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white38)
                ),
                child:TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search,color: Colors.white,size: 30,),
                    hintText: "Find Burgers",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none


                  ),
                )
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: FractionalTranslation(
            translation: Offset(0.0,0.5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Card(
                  elevation: 3,
                  child:TextFormField(
                    decoration: InputDecoration(

                        prefixIcon: Icon(Icons.search,color: Colors.grey,size: 20,),
                        hintText: "Search for burgers, delivery, barbers on Yelo",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                        border: InputBorder.none


                    ),
                  )
              ),
            ),
          ),
        )



      ],
    );

  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;

  @override
  // TODO: implement showOnScreenConfiguration
  PersistentHeaderShowOnScreenConfiguration get showOnScreenConfiguration => throw UnimplementedError();

  @override
  // TODO: implement vsync
  TickerProvider get vsync => throw UnimplementedError();
}