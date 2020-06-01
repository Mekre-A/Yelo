import 'package:flutter/material.dart';

class CustomImageWithSearchBar extends StatefulWidget{

  CustomImageWithSearchBar({@required this.imagePath, @required this.position,@required this.textToBeDisplayed,@required this.hintText});

  final String imagePath;
  final int position;
  final String textToBeDisplayed;
  final String hintText;

  CustomImageWithSearchBarState createState() => CustomImageWithSearchBarState();
}

class CustomImageWithSearchBarState extends State<CustomImageWithSearchBar>{

  @override
  Widget build(BuildContext context) {
      return Container(
        width: 250,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
                widget.imagePath,
                fit: BoxFit.fill,
            ),
            Positioned(
              top: widget.position == 0 ? 10.0 : null,
              bottom: widget.position == 1 ? 10.0 : null,
              left: 10.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.textToBeDisplayed,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Container(
                      height: 20,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                      ),
                      child:Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 40.0),
                              icon: Icon(Icons.search,color: Colors.black,size: 20,),
                              hintText: widget.hintText,
                              hintStyle: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.bold),
                              border: InputBorder.none
                          ),
                        ),
                      )
                  )
                ],
              ) ,
            )
          ],
        ),
      );

  }

}