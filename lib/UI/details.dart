import 'package:flutter/material.dart';
import 'package:newsblogui/Constant/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
            height: 400.0,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Rectangle 19.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: color1.withOpacity(0.4),
                      ),
                      child: Image.asset(
                        'assets/icons/Vector (36).png',
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: color1.withOpacity(0.4),
                      ),
                      child: Image.asset('assets/icons/Vector (35).png'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
