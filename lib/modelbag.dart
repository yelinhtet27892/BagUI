class Bag {
  final String text1;
  final String text2;
  final String img;

  Bag({required this.text1, required this.text2, required this.img});
}

List<Bag> bagList() {
  List<Bag> bl = [];

  bl.add(Bag(text1: "Shoulder Bag", text2: "\$234", img: "images/b1.jpg"));
  bl.add(Bag(text1: "Branded Bag", text2: "\$250", img: "images/b2.jpg"));
  bl.add(Bag(text1: " Tote Bag", text2: "\$300", img: "images/b3.jpg"));
  bl.add(Bag(text1: "Luggage Bag", text2: "\$300", img: "images/b4.jpg"));
  bl.add(Bag(text1: " Tote Bag", text2: "\$400", img: "images/b5.jpg"));
  bl.add(Bag(text1: " Shoulder Bag", text2: "\$100", img: "images/b6.jpg"));
  bl.add(Bag(text1: " Branded Bag", text2: "\$200", img: "images/b7.jpg"));
  bl.add(Bag(text1: " Branded Bag", text2: "\$200", img: "images/b8.jpg"));
  return bl;
}
