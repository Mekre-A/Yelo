import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:your_food/Component/HomeComponent/widgets/custom_image_with_searchbar.dart';
import 'package:your_food/Component/HomeComponent/widgets/sliver_custom_header.dart';

class Home extends StatefulWidget {
  final List<CustomImageWithSearchBar> images = [
    CustomImageWithSearchBar(
      imagePath: "asset/images/pizza.jpg",
      position: 0,
      textToBeDisplayed: "Staying in? \nOrder Pizza",
      hintText: "Pizza Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/rice.jpg",
      position: 1,
      textToBeDisplayed: "Get Chinese? \nTonight",
      hintText: "Chinese Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/pizza.jpg",
      position: 0,
      textToBeDisplayed: "Staying in? \nOrder Pizza",
      hintText: "Pizza Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/rice.jpg",
      position: 1,
      textToBeDisplayed: "Get Chinese? \nTonight",
      hintText: "Chinese Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/pizza.jpg",
      position: 0,
      textToBeDisplayed: "Staying in? \nOrder Pizza",
      hintText: "Pizza Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/rice.jpg",
      position: 1,
      textToBeDisplayed: "Get Chinese? \nTonight",
      hintText: "Chinese Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/pizza.jpg",
      position: 0,
      textToBeDisplayed: "Staying in? \nOrder Pizza",
      hintText: "Pizza Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/rice.jpg",
      position: 1,
      textToBeDisplayed: "Get Chinese? \nTonight",
      hintText: "Chinese Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/pizza.jpg",
      position: 0,
      textToBeDisplayed: "Staying in? \nOrder Pizza",
      hintText: "Pizza Delivery",
    ),
    CustomImageWithSearchBar(
      imagePath: "asset/images/rice.jpg",
      position: 1,
      textToBeDisplayed: "Get Chinese? \nTonight",
      hintText: "Chinese Delivery",
    ),
  ];
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            floating: false,
            delegate: SliverCustomHeader(maxExtent: 400, minExtent: 200),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, childAspectRatio: 1.3),
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: <Widget>[
                    Icon(Icons.restaurant),
                    Text("Restaurant")
                  ],
                ),
                Column(
                  children: <Widget>[Icon(Icons.motorcycle), Text("Delivery")],
                ),
                Column(
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.shoppingBasket),
                    Text("TakeOut")
                  ],
                ),
                Column(
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.calculator),
                    Text("Accountants")
                  ],
                ),
                Column(
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.screwdriver),
                    Text("Plumbers")
                  ],
                ),
                Column(
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.car),
                    Text("Auto Repair")
                  ],
                ),
                Column(
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.truckMoving),
                    Text("Movers")
                  ],
                ),
                Column(
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.ellipsisH),
                    Text("More")
                  ],
                ),
              ],
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
          Divider(color: Colors.black12, thickness: 20.0,),

          ])),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20),
          ),

          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Delivering to your area",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Classic choices",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      FaIcon(FontAwesomeIcons.ellipsisH)
                    ],
                  ),
                ],
              ),
            ),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 0),
              child: Container(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 30),
                        child: widget.images[index]);
                  },
                ),
              ),
            ),
          ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.red,fontSize: 15),
        unselectedLabelStyle: TextStyle(color: Colors.grey,fontSize: 10),

        iconSize: 25,
        currentIndex:0,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('Search')),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heartbeat),title: Text('Activity')),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin),title: Text('Me')),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bookmark),title: Text('Collections')),
          BottomNavigationBarItem(icon: Icon(Icons.menu),title: Text('More')),
        ],

      ),
    );
  }
}
