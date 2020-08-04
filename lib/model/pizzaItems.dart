
import 'package:flutter/foundation.dart';


//this is for pizza


//create a list of food items
PizzaItemList pizzaitemlist = PizzaItemList(pizzaItems: [
  PizzaItem(
    id: 1,
    title: "Olive Pizza",
    desc: "Olive,mushroom and tomotoes",
    price: 18.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/c548747a4a7b5a197764de35d7af5155/L0KzQYi4UsIxN5h4iZGAYUPkcom9UcQ5QWU2TpC6N0S7QYG5VcE2OWQ8UakCMkm1SYi6U8Y0PF91htk=/5a3ab861489416.17481025151379772929733634.png",
  ),
  PizzaItem(
    id: 2,
    title: "Pepperoni Pizza",
    desc: "Classic italian pizza",
    price: 12.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/74577b172c671e3fc5b1329d27cb9cc6/L0KzQYm3UsExN6V0fZH0aYP2gLBuTgNifaRmf9c2cHn9irK0jfFzb5lqitt9YT3rcb7plgJobaMye9N1enBxdX76ggV0aZhqReJyeorkPYboVBY6a5VrTqsDZEe7PoaBUsc2P2E4Sac6OEO0QoeAUcQ0OmUziNDw/kisspng-sausage-pizza-margherita-hamburger-calzone-sausage-pizza-5a7f9cdf698d78.5827570315183126714324.png",
  ),
  PizzaItem(
    id: 2,
    title: "Ians treat",
    desc: "HAS ALL TOPPINGS ",
    price: 21.10,
    imgUrl:
    "https://png2.cleanpng.com/sh/f18007d1b046d86305a3ff1f82a93266/L0KzQYi4UsIxN6J4iZGAYUPkcom8WcIyOWg8TpCAMUOzQIm5UcE2OWQ8UakCMkG0Q4a8Ucg0Ol91htk=/5a3ab859211776.51300821151379772113551832.png",
  ),
  PizzaItem(
    id: 2,
    title: "Vegan Pizza",
    desc: "Completely vegan",
    price: 16.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/38f0a0c121e58265f3c2811d54eeca5b/L0KzQYm3V8A0N5RueZH0aYP2gLBuTfNidJprhAR3aXGwg8XCjPUueJpBktM2c3nmeb3wgf4ueJpBktM2d3X1f8u0kPl7gpIyiNtFenGwgL3ojvV1NWZnS9RqYXa3R4OAVMM3NmU1TaQ5MUGzQYa6UMY0P2E5TKYBOEixgLBu/kisspng-california-style-pizza-sicilian-pizza-weroz-pizza-pizza-planet-5b3baaf4727436.4052011015306370444688.png",
  ),



]);

class PizzaItemList {
  List<PizzaItem> pizzaItems;

  PizzaItemList({@required this.pizzaItems});
}




//create a class for the food items
class PizzaItem
{
  int id;
  String title;
  String desc;
  double price;
  String imgUrl;
  int quantity;
  //initialise the class
  PizzaItem({
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