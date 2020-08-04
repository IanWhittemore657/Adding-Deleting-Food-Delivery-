
import 'package:flutter/foundation.dart';


//this is for fish


//create a list of food items
FishItemList fishitemslist = FishItemList(fishItems: [
  FishItem(
    id: 1,
    title: "Sushi",
    desc: "24 Piece Avo & Salmon delight",
    price: 24.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/ed4dcc2c48a4a66852fe4633f3fad9d5/L0KzQYm3U8I5N6h3iZH0aYP2gLBuTgN2e5luRdxqcHHxdcTsTfN2caRuhtc2cHjsfLLrhfxxcJpmReR4bHywhLFokCQua5JxReVAc3jsPYbogvJnOWRpeqQEYkS4PoO5U8Y1OWY2Sac7MkK5RoW5Wcc0OWcziNDw/kisspng-sushi-japanese-cuisine-philadelphia-roll-toast-cal-sushi-5abbf13db29b45.2236415115222664297316.png",
  ),
  FishItem(
    id: 2,
    title: "Fish & Chips",
    desc: "Hake buttered fish",
    price: 12.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/62e87d723ee3693d9a878275fbba30c2/L0KzQYm3VcI4N6Z1ipH0aYP2gLBuTfZqe5kyedDtLXPrecH6TgRic5YyhAd9LXbyf7W0hwJmdpRtRdh7aXX2PbfwkBgua5luiOU2NXKzcYS9VPRkPJdnTKI3MUK8R4O7WccyPWM8S6sAOUG6SIG9Wb5xdpg=/kisspng-fish-and-chips-take-out-food-french-fries-fish-chips-5b0a364dc4fb40.1297249715273959178069.png",
  ),



]);

class FishItemList {
  List<FishItem> fishItems;

  FishItemList({@required this.fishItems});
}




//create a class for the food items
class FishItem
{
  int id;
  String title;
  String desc;
  double price;
  String imgUrl;
  int quantity;
  //initialise the class
  FishItem({
    this.id,
    this.title,
    this.desc,
    this.price,
    this.imgUrl,
    //this meaning that every item of food will always start with with a quantity of atleast 1
    this.quantity = 1,
  });

  //making the quantity go up when called upon
  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }
  //making the quantity go down when called upon
  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
}