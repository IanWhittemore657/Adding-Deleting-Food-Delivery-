
import 'package:flutter/foundation.dart';


//this is for desserts


//create a list of food items
DessertListItem dessertitemslist = DessertListItem(dessertItems: [
  DessertItem(
    id: 1,
    title: "Chocolate Cake",
    desc: "Whats there to say - Its CHOCOLATE",
    price: 9.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/791d15e39392252ce4f22317cd217a5a/L0KzQYi4UcI4N2EAfpGAYUHmSIPqWcE3PJM8SJCEMkG4RIq6WcE2OWI9SakEMkmzSYK6TwBvbz==/5a1c82c9164b70.9215493915118179290913.png",
  ),
  DessertItem(
    id: 2,
    title: "Chocolate Strawberry Ice-cream",
    desc: "Fruity goodness",
    price: 9.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/37652f1ed1eceedd072e6eeea41f9570/L0KzQYm3VsAzN5pujZH0aYP2gLBuTfFiNZ9mReZyZ3XvcX7ogb1xaZ1yRdtsZT3mgrbojb10dZD0jNpyZT31dX68gsE0PJYATaNrZnTmRHACWMc1P2E3UKMAMke8SYKCVccyOWU8RuJ3Zx==/kisspng-aa-na-tigela-aa-palm-ice-cream-smoothie-re-5b134e951bfdc4.9874702815279919571147.png",
  ),
  DessertItem(
    id: 3,
    title: "Milkshakes",
    desc: "Pick your favourite",
    price: 6.50,
    imgUrl:
    "https://png2.cleanpng.com/sh/f24dbd464755f60d4b138c0111af55cd/L0KzQYm3U8I6N5NuiZH0aYP2gLBuTflkbV5oitdqbT3web3ykBhic5YygudyY3WwfbrziCNpaZxqRadqYnO8QLe3UcU3aZI8RqYCNkW0SYa8UcUzOmQ1T6U6MkC7R4i1kP5o/kisspng-ice-cream-milkshake-juice-milkshake-5abc90f0156aa7.4765195515223073120877.png",
  ),



]);

class DessertListItem {
  List<DessertItem> dessertItems;

  DessertListItem({@required this.dessertItems});
}




//create a class for the food items
class DessertItem
{
  int id;
  String title;
  String desc;
  double price;
  String imgUrl;
  int quantity;
  //initialise the class
  DessertItem({
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