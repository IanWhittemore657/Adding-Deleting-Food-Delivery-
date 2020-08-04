
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fooddelivery/bloc/listTileColorBloc.dart';
import 'package:fooddelivery/cart.dart';
import 'package:fooddelivery/dessertpage.dart';
import 'package:fooddelivery/main.dart';
import 'package:fooddelivery/model/fishitems.dart';
import 'package:fooddelivery/model/fooditem.dart';
import 'package:fooddelivery/model/saladitems.dart';
import 'package:fooddelivery/pizzaFoods.dart';
import 'package:fooddelivery/saladfood.dart';
import 'package:fooddelivery/themeColor.dart';
import 'bloc/cartlistBloc.dart';
import 'package:cached_network_image/cached_network_image.dart';


class FishFood extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: ListView(
              children: <Widget>[
                FirstHalf(),
                SizedBox(height: 45),
                for (var fishItem in fishitemslist.fishItems)
                  Builder(
                    builder: (context) {
                      return ItemContainer(fishItem: fishItem);
                    },
                  )
              ],
            ),
          )),
    );
  }
}


class ItemContainer extends StatelessWidget {

  ItemContainer({
    @required this.fishItem,
  });

  final FishItem fishItem;
  final CartListBloc bloc = BlocProvider.getBloc<CartListBloc>();


//  addToCart(SaladItem saladItem) {
//    bloc.addToList(saladItem);
//  }
//
//  removeFromList(SaladItem saladItem) {
//    bloc.removeFromList(saladItem);
//  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
//        addToCart(saladItem);
        final snackBar = SnackBar(
          content: Text('${fishItem.title} added to Cart'),
          duration: Duration(milliseconds: 900),
        );

        Scaffold.of(context).showSnackBar(snackBar);
      },
      //Can change the items class in another folder
      child: Items(
          desc: fishItem.desc,
          itemName: fishItem.title,
          itemPrice: fishItem.price,
          imgUrl: fishItem.imgUrl,
          //just to add some structure
          //  leftAligned: (foodItem.id % 2) == 0 ? true : false,
          //but for this I want it to be on the right
          leftAligned: false
      ),
    );
  }
}

class FirstHalf extends StatelessWidget {
  const FirstHalf({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 25, 0, 0),
      child: Column(
        children: <Widget>[
          CustomAppBar(),
          SizedBox(height: 5),
          title(),
          SizedBox(height: 20),
          searchBar(),
          SizedBox(height: 25),
          //this is so that it will scroll left to right
          SingleChildScrollView(scrollDirection: Axis.horizontal,child: Categories(context)),
        ],
      ),
    );
  }
}

Widget Categories(BuildContext context){
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>Home()
                  ),
                ),
              },
              color: Colors.deepOrange[400],
              padding: EdgeInsets.all(10.0),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(FontAwesomeIcons.hamburger,size: 40,),
                  SizedBox(height: 8,),
                  Text("Burger",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),

          ],

        ),

        SizedBox(width: 15,),

        Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>saladFood()
                  ),
                ),

              },
              color: Colors.deepOrange[400],
              padding: EdgeInsets.all(10.0),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(FontAwesomeIcons.carrot,size: 40,),
                  SizedBox(height: 8,),
                  Text("Salad",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),

          ],
        ),

        SizedBox(width: 15,),

        Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => {


                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>FishFood()
                  ),
                ),

              },
              color: Colors.deepOrange[400],
              padding: EdgeInsets.all(10.0),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(FontAwesomeIcons.fish,size: 40,),
                  SizedBox(height: 8,),
                  Text("Fish",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),

          ],
        ),

        SizedBox(width: 15,),

        Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>PizzaFood()
                  ),
                ),

              },
              color: Colors.deepOrange[400],
              padding: EdgeInsets.all(10.0),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(FontAwesomeIcons.pizzaSlice,size: 40,),
                  SizedBox(height: 8,),
                  Text("Pizza",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),

          ],
        ),

        SizedBox(width: 15,),

        Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>DessertFood()
                  ),
                ),
              },
              color: Colors.deepOrange[400],
              padding: EdgeInsets.all(10.0),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(FontAwesomeIcons.iceCream,size: 40,),
                  SizedBox(height: 8,),
                  Text("Dessert",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),

          ],
        ),

      ],
    ),
  );


}

class Items extends StatelessWidget {
  Items({
    @required this.leftAligned,
    @required this.imgUrl,
    @required this.itemName,
    @required this.itemPrice,
    @required this.desc,
  });

  final bool leftAligned;
  final String imgUrl;
  final String itemName;
  final double itemPrice;
  final String desc;

  @override
  Widget build(BuildContext context) {
    double containerPadding = 45;
    double containerBorderRadius = 10;

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: leftAligned ? 0 : containerPadding,
            right: leftAligned ? containerPadding : 0,
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.horizontal(
                    left: leftAligned
                        ? Radius.circular(0)
                        : Radius.circular(containerBorderRadius),
                    right: leftAligned
                        ? Radius.circular(containerBorderRadius)
                        : Radius.circular(0),
                  ),
                  child: CachedNetworkImage(
                    placeholder: (context, url) => CircularProgressIndicator(),
                    imageUrl:
                    imgUrl,
                  ),
                ),
              ),
//                  child: Image.network(
//                    imgUrl,
//                    height: 100,
//                    width: 100,
//                    fit: BoxFit.fill,
//                  ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
            padding: EdgeInsets.only(
              left: leftAligned ? 20 : 0,
              right: leftAligned ? 0 : 20,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(itemName,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              )),
                        ),
                        Text("\£$itemPrice",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.black45, fontSize: 15),
                            children: [
                              TextSpan(text: "Description - "),
                              TextSpan(
                                  text: desc,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700))
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(height: containerPadding),
                ])),
      ],
    );

  }
}


Widget searchBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Icon(
        Icons.search,
        color: Colors.black45,
      ),
      SizedBox(width: 20),
      Expanded(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search....",
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              hintStyle: TextStyle(
                color: Colors.black87,
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red))),
        ),
      ),
    ],
  );
}

Widget title() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      SizedBox(width: 45),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "MENU",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          Text(
            "Delivery",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
        ],
      )
    ],
  );
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartListBloc bloc = BlocProvider.getBloc<CartListBloc>();
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu),
          StreamBuilder(
            stream: bloc.listStream,
            builder: (context, snapshot) {
              List<FoodItem> foodItems = snapshot.data;
              int length = foodItems != null ? foodItems.length : 0;

              return buildGestureDetector(length, context, foodItems);
            },
          )
        ],
      ),
    );
  }

  GestureDetector buildGestureDetector(
      int length, BuildContext context, List<FoodItem> foodItems) {
    return GestureDetector(
      onTap: () {
        //if there is nothing in the menu then it will not go into the new page
        if (length > 0) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Cart()));
        } else {
          return;
        }
      },
      child: Container(
        margin: EdgeInsets.only(right: 30),
        child: Text(length.toString()),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.deepOrange[400], borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}

