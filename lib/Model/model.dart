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

class NewsCategory {
  final String image, image1, name, time, text, category;

  NewsCategory({
    required this.image,
    required this.image1,
    required this.name,
    required this.time,
    required this.text,
    required this.category,
  });
}

final List<NewsCategory> newsCategory = [
  NewsCategory(
    image: 'assets/images/Rectangle 17.png',
    image1: 'assets/images/Rectangle 18.png',
    name: 'Jesse James',
    time: '08 min',
    text: 'Art that swipes through\nthe landscapes — Earthscape ...',
    category: 'Art & Illustration',
  ),
  NewsCategory(
    image: 'assets/images/Rectangle 17.png',
    image1: 'assets/images/Rectangle 18.png',
    name: 'Aman Sharma',
    time: '12 min',
    text: 'Jaipur: Arts in the Pink City and Learning to Write',
    category: 'Art & Illustration',
  ),
];
