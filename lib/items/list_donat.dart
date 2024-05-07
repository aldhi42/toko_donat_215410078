class Donut {
  final String imagePath;
  final String name;
  final double price;
  final int starRating;

  Donut({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.starRating,
  });
}

List<Donut> donutItems = [
  Donut(
    imagePath: 'images/Black.png',
    name: 'Black Jack',
    price: 2.50,
    starRating: 4,
  ),
  Donut(
    imagePath: 'images/Caviar.png',
    name: 'Caviar Chocolate',
    price: 2.00,
    starRating: 5,
  ),
  Donut(
    imagePath: 'images/Coco.png',
    name: 'Coco Loco',
    price: 2.75,
    starRating: 3,
  ),
  Donut(
    imagePath: 'images/Copa.png',
    name: 'Copa Banana',
    price: 2.50,
    starRating: 4,
  ),
  Donut(
    imagePath: 'images/Crunchy.png',
    name: 'Crunchy Crunchy',
    price: 2.00,
    starRating: 5,
  ),
  Donut(
    imagePath: 'images/Glazzy.png',
    name: 'Glazzy',
    price: 2.75,
    starRating: 3,
  ),
  Donut(
    imagePath: 'images/Jacky.png',
    name: 'Jacky Chunk',
    price: 2.00,
    starRating: 5,
  ),
  Donut(
    imagePath: 'images/Sugar.png',
    name: 'Sugar Ice',
    price: 2.75,
    starRating: 3,
  ),
];
