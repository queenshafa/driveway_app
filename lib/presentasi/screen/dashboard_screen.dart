import 'package:driveway_app/presentasi/screen/car_detail_screen.dart';
import 'package:driveway_app/presentasi/widget/card_cars.dart';
import 'package:driveway_app/utils/color_constant.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimary,
        title: Text(
          "DriveWay",
          style: TextStyle(
              color: ColorConstant.colorWhite, fontFamily: "AvenirBlack"),
        ),
      ),
      backgroundColor: ColorConstant.colorPrimary,
      body: SingleChildScrollView(
        // To avoid overflow
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Good Morning, User",
                  style: TextStyle(
                      color: ColorConstant.colorWhite,
                      fontFamily: "AvenirHeavy",
                      fontSize: 18),
                ),
              ),
            ),
            Center(
              child: Card(
                margin: const EdgeInsets.all(16),
                color: ColorConstant.colorWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nearest Car',
                        style: TextStyle(
                            color: ColorConstant.colorPrimary,
                            fontSize: 16,
                            fontFamily: 'AvenirMedium'),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Porsche 911',
                                style: TextStyle(
                                  color: ColorConstant.colorPrimary,
                                  fontSize: 20,
                                  fontFamily: 'AvenirBlack',
                                ),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                '\$120/day',
                                style: TextStyle(
                                    color: ColorConstant.colorPrimary,
                                    fontSize: 16,
                                    fontFamily: 'AvenirHeavy'),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/porsche_911_sideview.png',
                            height: 62,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Text(
                        "Car Brands",
                        style: TextStyle(
                            color: ColorConstant.colorWhite,
                            fontFamily: "AvenirHeavy",
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorConstant.colorWhite,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection:
                          Axis.horizontal, // To create horizontal scroll
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/ic_porsche.png',
                                width: 100,
                              )
                            ],
                          ),
                          const SizedBox(width: 12),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/ic_bmw.png',
                                width: 100,
                              )
                            ],
                          ),
                          const SizedBox(width: 12),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/ic_audi.png',
                                width: 100,
                              )
                            ],
                          ),
                          const SizedBox(width: 12),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/ic_ferrari.png',
                                width: 100,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Text(
                        "Users Favorite",
                        style: TextStyle(
                            color: ColorConstant.colorWhite,
                            fontFamily: "AvenirHeavy",
                            fontSize: 18),
                      ),
                    ),
                  ),
                  CardCars(
                      image: 'assets/images/porsche_taycan.png',
                      title: 'Porsche Taycan',
                      capacity: '4',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CarDetailScreen(
                              title: 'Porsche Taycan',
                              image: 'assets/images/porsche_taycan.png',
                              description:
                                  'The overwhelming feeling of sitting in an amazing electric sports car: the new Taycan makes electricity even more electrifying. Performance even more impressive. And the extraordinary even more outstanding.',
                              gasType1: 'Electric',
                              gasType2: 'Charging',
                              acceleration: '4,8s',
                              capacity: '4 Person',
                              price: '\$120/day',
                            ),
                          ),
                        );
                      },
                      fuel: '79 kWh',
                      price: '\$120/day'),
                  const SizedBox(height: 16),
                  CardCars(
                      image: 'assets/images/bmw_m3.png',
                      title: 'BMW M3 Touring',
                      capacity: '5',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CarDetailScreen(
                              title: 'BMW M3 Touring',
                              image: 'assets/images/bmw_m3.png',
                              description:
                                  'The first of its kind, now with refined design: The BMW M3 Touring with M xDrive goes to particularly impressive lengths to deliver on the traditional M promise of dynamic flair, agility and precision combined with unrestricted everyday practicality and mile-covering ability.',
                              gasType1: 'Pertamax Turbo',
                              gasType2: 'Shell V-Power Nitro+',
                              acceleration: '3,6s',
                              capacity: '5 Person',
                              price: '\$110/day',
                            ),
                          ),
                        );
                      },
                      fuel: '85 L',
                      price: '\$110/day'),
                  const SizedBox(height: 16),
                  CardCars(
                      image: 'assets/images/ferrari_488_gtb.png',
                      title: 'Ferrari 488 GTB',
                      capacity: '2',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CarDetailScreen(
                              title: 'Ferrari 488 GTB',
                              image: 'assets/images/ferrari_488_gtb.png',
                              description:
                                  'The 488 GTB name marks a return to the classic Ferrari model designation with the 488 in its moniker indicating the engine\'s unitary displacement, while the GTB stands for Gran Turismo Berlinetta.',
                              gasType1: 'Pertamax Turbo',
                              gasType2: 'Shell V-Power Nitro+',
                              acceleration: '3s',
                              capacity: '2 Person',
                              price: '\$240/day',
                            ),
                          ),
                        );
                      },
                      fuel: '78 L',
                      price: '\$110/day'),
                  const SizedBox(height: 16),
                  CardCars(
                      image: 'assets/images/porsche_cayenne.png',
                      title: 'Porsche Cayenne',
                      capacity: '5',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CarDetailScreen(
                              title: 'Porsche Cayenne',
                              image: 'assets/images/porsche_cayenne.png',
                              description:
                                  'Over 20 years ago we asked ourselves if a sports car could celebrate more than the individual. The Cayenne provided the answer. And it continues to perfect it to this day. For people who want to tread their own path.',
                              gasType1: 'Pertamax Turbo',
                              gasType2: 'Shell V-Power Nitro+',
                              acceleration: '3s',
                              capacity: '5 Person',
                              price: '\$110/day',
                            ),
                          ),
                        );
                      },
                      fuel: '85 L',
                      price: '\$110/day'),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
