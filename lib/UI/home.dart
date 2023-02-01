import 'package:flutter/material.dart';
import 'package:newsblogui/Constant/colors.dart';
import 'package:newsblogui/Model/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Category category;
    const int index = 0;
    return Scaffold(
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
                          const Text('Popular'),
                        ],
                      ),
                      Image.asset('assets/images/Group 11.png', width: 20.0),
                    ],
                  ),
                ],
              ),
            ],
          ),
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
        padding: const EdgeInsets.all(10.0),
        height: 100.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color1,
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
              child: Container(
                height: 80.0,
                width: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: widget.index == 1 ? Colors.white : Colors.black,
                ),
                child: const Text('All'),
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
                width: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: widget.index == 0 ? Colors.white : Colors.black,
                ),
                child: const Text('Popular'),
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
          // child: ,
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

class CCCCCCC extends StatefulWidget {
  const CCCCCCC({Key? key}) : super(key: key);

  @override
  State<CCCCCCC> createState() => _CCCCCCCState();
}

class _CCCCCCCState extends State<CCCCCCC> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
