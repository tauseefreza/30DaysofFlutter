class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
      id: "001",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th Generation",
      price: 125000,
      color: "#33505a",
      image:
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fgadgets.ndtv.com%2Fiphone-12-pro-price-in-india-97687&psig=AOvVaw0O9JcqhdSUkKw7uTdG-g86&ust=1613925339045000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIjF0tLy-O4CFQAAAAAdAAAAABAF")
];
