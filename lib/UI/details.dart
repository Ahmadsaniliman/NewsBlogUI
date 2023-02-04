import 'package:flutter/material.dart';
import 'package:newsblogui/Constant/colors.dart';
import 'package:newsblogui/Constant/routes.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
              height: 430.0,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            homePageRoute,
                          );
                        },
                        child: Container(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                                'assets/images/Vector (41).png',
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            Container(
                              padding: const EdgeInsets.all(15.0),
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: color1.withOpacity(0.4),
                              ),
                              child: Image.asset(
                                'assets/images/Vector (43).png',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'In the Mughal forts, walking\nthrough Jaipur’s bustle to history',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'The journey for this piece was under taken by KunalKataria and Sneha Chakraborty.',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'History',
                              style: TextStyle(
                                color: Colors.yellow,
                              ),
                            ),
                            Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/Rectangle 18 (1).png',
                                  width: 20.0,
                                ),
                                const SizedBox(width: 5.0),
                                const Text(
                                  'Jesse James',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //
            //
            //
            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'The Amber fort is disintegrating but sturdy. Rising above the town of Amer long steep climb invites\npeople like a throne to its king.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      height: 1.2,
                    ),
                  ),
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Stepping inside the\npalace courtyard that overlooks the Maota lake, it\nfeels like a royal backyard outing in the Mughal era.',
                      style: TextStyle(
                        fontSize: 13.0,
                        // fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                  ),
                  //
                  //
                  Text(
                    'The city of Amer used to be the state capital long before Jaipur. It was ruled by Kachhwahas, a Rajput clan family that ruled several kingdoms and princely states in India. The fort was built by Raja Man Singh in 1592 AD before Raja Jai Singh I developed it into the realm that it is today.',
                    style: TextStyle(
                      fontSize: 13.0,
                      // fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'As great cities exude ageless charm, Jaipur’s humbl\nhospitality, royal food platters, and sweet social chaos puts it top of the list.',
                      style: TextStyle(
                        fontSize: 13.0,
                        // fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
