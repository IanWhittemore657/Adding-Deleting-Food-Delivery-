
import 'package:flutter/foundation.dart';


//this is for salads


//create a list of food items
SaladitemList saladitemslist = SaladitemList(saladItems: [
  SaladItem(
    id: 1,
    title: "Chicken salad",
    desc: "YUM healthy salad",
    price: 11.59,
    imgUrl:
    "https://png2.cleanpng.com/sh/986a4ceab9e8a8d075a3d0ad98da0f3f/L0KzQYm3U8I5N6V7iZH0aYP2gLBuTfdzbZZwReVqbHHnPcfwjvFqb6NqjOZuLXPkdcTokr10aZ1mfJ9vcoXshH76gfxibF54ed5qZD24cbPqUcVnbpZqTqcEMz66Roq6V8k3OWI6SqQ7N0W7Q4qCV8Y2NqFzf3==/kisspng-greek-salad-vinaigrette-caesar-salad-fruit-salad-salad-5abc15ffee6593.7693796115222758399765.png",
  ),
  SaladItem(
    id: 2,
    title: "Salmon Salad",
    desc: "Good source of protein and omegas",
    price: 14.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/9be6615fa918e6be33da7119e5971613/L0KzQYm3UsAzN6p6iZH0aYP2gLBuTfhidZN6itlucj32hMPshgQubpD0fJ98ZXHpf7FrTfZie6UyftH4ZD3ndb3wgBlwfaQyftH4ZD24cYi8UMg0a5Rqedg9MT61Roi9V8Q0PGI6SakBMUm1RoGBVMY3NqFzf3==/kisspng-hamburger-street-food-seafood-fast-food-delicious-food-5a75083cceaf41.2676743415176192608466.png",
  ),
  SaladItem(
    id: 3,
    title: "Vegan Salad",
    desc: "ALL THE FRUIT",
    price: 13.55,
    imgUrl: "https://png2.cleanpng.com/sh/273541b811cd0608c5ec8128aeb3162f/L0KzQYm3VME0N6J5fZH0aYP2gLBuTfp2cZRqRdh7dXn3PcTojPFlNZt6ht02ZnBydH7sggRqdpgyfuRAaYSwg7LzgfQuPZJpSNYBZUi5QrXohMMvQGI1TaIEMUm0RYO6VsM2QWU5TKI9OT7zfri=/kisspng-juice-fruit-salad-junk-food-eating-fruit-salad-5ad0d6e862dad3.8105091915236359444049.png",
  ),


]);

class SaladitemList {
  List<SaladItem> saladItems;

  SaladitemList({@required this.saladItems});
}




//create a class for the food items
class SaladItem
{
  int id;
  String title;
  String desc;
  double price;
  String imgUrl;
  int quantity;
  //initialise the class
  SaladItem({
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