import 'package:flutter/material.dart';
import 'package:newsblogui/Constant/colors.dart';
import 'package:newsblogui/Model/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int index = 0;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        height: 50.0,
        width: double.infinity,
        color: color1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.notifications),
            Icon(Icons.person),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            // vertical: 15.0,
            // horizontal: 15.0,
            top: 15.0, right: 15.0, left: 15.0,
          ),
          child: Column(
            children: [
              const AppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Welcome Back,  ',
                            style: TextStyle(fontSize: 20.0)),
                        const Text(
                          'Liman ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset('assets/images/image 1.png', width: 20.0),
                      ],
                    ),
                    const SizedBox(height: 7.0),
                    Row(
                      children: [
                        const Text(
                          "we've got some exciting news for you  ",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        Image.asset('assets/images/image 2.png', width: 20.0),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      newCategory.length,
                      (index) => CategoryContainer(
                        category: newCategory[index],
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              const AllAndPopular(index: index),
              //
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/image 9.png', width: 20.0),
                          const SizedBox(width: 10.0),
                          const Text(
                            'Popular',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/Group 11.png',
                        width: 120.0,
                      ),
                    ],
                  ),
                  //   const SizedBox(
                  //     height: 15.0,
                  //   ),
                ],
              ),
              //
              //
              //
              //
              SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                      newsCategory.length,
                      (index) => SingleChildScrollView(
                        child: NewsCardBelow(
                          newsCategry: newsCategory[index],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsCardBelow extends StatelessWidget {
  const NewsCardBelow({
    Key? key,
    required this.newsCategry,
  }) : super(key: key);

  final NewsCategory newsCategry;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 25.0,
                bottom: 10.0,
                right: 6.0,
              ),
              height: 130.0,
              width: double.infinity,
              //   color: Colors.green,
              child: Row(
                children: [
                  Image.asset(
                    newsCategry.image,
                    //   width: 120,
                  ),
                  const SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                newsCategry.image1,
                                width: 20.0,
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                newsCategry.name,
                                style: const TextStyle(fontSize: 13.0),
                              ),
                            ],
                          ),
                          const SizedBox(width: 60.0),
                          Text(
                            newsCategry.time,
                            style: const TextStyle(fontSize: 11.0),
                          )
                        ],
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          newsCategry.text,
                          style: const TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        newsCategry.category,
                        style: const TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 2.0,
              width: double.infinity,
              color: color1,
            ),
          ],
        ),
      ),
    );
  }
}

class AllAndPopular extends StatefulWidget {
  const AllAndPopular({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  @override
  State<AllAndPopular> createState() => _AllAndPopularState();
}

class _AllAndPopularState extends State<AllAndPopular> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        height: 70.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color1.withOpacity(0.4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  index == 0;
                });
              },
              child: const SizedBox(
                height: 80.0,
                width: 120.0,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(15.0),
                //   color: widget.index == 1 ? Colors.white : Colors.black,
                // ),
                child: Center(
                  child: Text('All'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index == 1;
                });
              },
              child: Container(
                height: 80.0,
                width: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: widget.index == 0 ? Colors.white : Colors.black,
                ),
                child: const Center(
                  child: Text('Popular'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      padding: const EdgeInsets.all(10.0),
      height: 120.0,
      width: 130.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(category.image1),
        ),
      ).copyWith(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 35.0,
            width: 35.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Image.asset(category.image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                category.updates,
                style: const TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black45,
          ),
          child: Image.asset(
            'assets/images/Rectangle 7 (3).png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          child: Image.asset(
            'assets/images/Vector (30).png',
          ),
        ),
      ],
    );
  }
}
