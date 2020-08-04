
import 'package:flutter/foundation.dart';


//this is for burgers


//create a list of food items
FooditemList fooditemList = FooditemList(foodItems: [
  FoodItem(
    id: 1,
    title: "Chicken Burger",
    desc: "The classic chicken",
    price: 12.00,
    imgUrl:
    "https://png2.cleanpng.com/sh/82ca95686d678dcf5a32c5c29b387332/L0KzQYm3UsAzN5dvj5H0aYP2gLBuTfhidZN6itlucj3meLrqiBVvNaRmhtZCaXPrPbTvhfV0bZN6itlucj3lebi0jr11aaR5Rdh7aXXnPbTvifNsbZ8yeud7Z3X1PYboV8Q4P2Y8SqM8NHazPomBVcY4QGc4Sac6N0W7QoK9V8E0Pl91htk=/kisspng-hamburger-chicken-sandwich-cheeseburger-big-n-tast-fried-chicken-burger-5a7477572134f0.885678631517582167136.png",
  ),
  FoodItem(
    id: 2,
    title: "Double Patty Burger",
    desc: "Double is better",
    price: 14.99,
    imgUrl:
    "https://png2.cleanpng.com/sh/29be21be02a41c08671e4409709eda7c/L0KzQYm3UcMyN6JmfZH0aYP2gLBuTgdpd6F1feQ2aHHwcsb5hBVzNZRtfdd8ZXL4grjskr1jfaNsfeQ2a3nxd373kvVucaZyRdhqc4SwdrF2hL1jfaNsfeQ2NXG6QobpU8YzO2dnSak3MEazSYq6WcgyPWI8TKY8OEm3QYW8Ub5xdpg=/kisspng-whopper-hamburger-cheeseburger-burger-king-premium-fast-food-burger-5a725b36236b17.0609939815174438941451.png",
  ),
  FoodItem(
    id: 3,
    title: "Steak Burger",
    desc: "Steak + Burger = YES",
    price: 16.00,
    imgUrl: "https://png2.cleanpng.com/sh/1afdfc905450439a3e265e1ad1b4a7e7/L0KzQYm3VsIzN6F8eZH0aYP2gLBuTgdpd6F1feQ2aHHwcsb5hBVzNZRtgdV0ZX6wg7L1hQdqa5kyettwLXvsfri0gwVzb5Z3RdpqbXL4grjskr1ubZ96RadrMnS2R7e3VMdjOGIARqgCM0i1QIm5UcUzQWcASKIENkK8Q4e1kP5o/kisspng-whopper-hamburger-chicken-sandwich-big-king-burger-hamburger-menu-5b2d37f047b019.6738208215296900962936.png",
  ),
  FoodItem(
    id: 4,
    title: "Hash-Brown Burger",
    desc: "Potatoe Burger",
    price: 8.49,
    imgUrl: "https://png2.cleanpng.com/sh/c53a2a67ff680f19ccce55226a89c241/L0KzQYm3U8MyN6VnfZH0aYP2gLBuTgZmb5hufZ9rdYLqdcO0iPFuaqZ3f9d7LYbod7b7ggJqaZ8yeAdyc3nxdX7qiPlkc5ZzRdRAcnfogn68gfJnP5RmUdc5OHGzQHACUMg6O2Y2TKMAMkK3SYmAUsk6OWo8RuJ3Zx==/kisspng-veggie-burger-hamburger-vegetarian-cuisine-chicken-burger-5abf7ca9e08a00.9089351415224987299197.png",
  ),
  FoodItem(
    id: 5,
    title: "Triple Burger",
    desc: "3 is better than 1",
    price: 16.99,
    imgUrl: "https://png2.cleanpng.com/sh/08ec6e1ca20adfdfbc7143eff3f34f02/L0KzQYm3U8MxN5V8j5H0aYP2gLBuTfhidZN6itlucj35dbjuifUuaqZ3f9d7LXbkhLP8kvdmel53feV9YYX1cbB7TfNpbZZ4RdRAcnfogn7yif5oNWZmetc5MEG6Q4PpVBQzNmM2UKkCOUW1QYa5UsQxOWQ1S6Q5N0ixgLBu/kisspng-hamburger-veggie-burger-fatburger-restaurant-chees-burger-king-5abe001732b7d2.2187795215224013032078.png",
  ),
  FoodItem(
    id: 6,
    title: "Bacon Cheese Burger",
    desc: "Meat extreme",
    price: 13.00,
    imgUrl:
    "https://png2.cleanpng.com/sh/9af15bb38797dd17ae5558d68520f40f/L0KzQYm3U8MxN5xufZH0aYP2gLBuTgdpd6F1feQ2aHHwcsb5hBVzNZRtfdd8ZXL4grjskr1jcZgyg9t3Zz3lccPphfN2bV5sRdRAcnfogn7yif5oNWZmetc5MXW8SYPoVcQ0NmI2SKg7M0S5QYa5UsQxOWg7Uag5MEexgLBu/kisspng-whopper-hamburger-cheeseburger-big-king-barbecue-g-burger-king-5abe01e992a543.1106234615224017696007.png",
  ),
]);

class FooditemList {
  List<FoodItem> foodItems;

  FooditemList({@required this.foodItems});
}




//create a class for the food items
class FoodItem
{
  int id;
  String title;
  String desc;
  double price;
  String imgUrl;
  int quantity;
  //initialise the class
  FoodItem({
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