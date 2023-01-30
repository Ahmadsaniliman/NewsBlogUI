class Category {
  final String image, image1, title, updates;

  Category({
    required this.image,
    required this.image1,
    required this.title,
    required this.updates,
  });
}

final List<Category> newCategory = [
  Category(
    image1: 'assets/images/Vector (34).png',
    image: 'assets/images/image 3 (1).png',
    title: 'Gaming',
    updates: '+ 20 updates',
  ),
  Category(
    image1: 'assets/images/Vector (32).png',
    image: 'assets/images/image 4.png',
    title: 'Sports',
    updates: '+ 99 updates',
  ),
  Category(
    image1: 'assets/images/Vector (33).png',
    image: 'assets/images/image 5.png',
    title: 'Food',
    updates: '+ 34 updates',
  ),
];
