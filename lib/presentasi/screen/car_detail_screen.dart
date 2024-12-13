import 'package:flutter/material.dart';
import 'package:driveway_app/utils/color_constant.dart';

class CarDetailScreen extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String gasType1;
  final String gasType2;
  final String acceleration;
  final String capacity;
  final String price;
  const CarDetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.gasType1,
    required this.gasType2,
    required this.acceleration,
    required this.capacity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.colorPrimary,
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimary,
        title: Text(
          title,
          style: TextStyle(
              color: ColorConstant.colorWhite, fontFamily: "AvenirBlack"),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorConstant.colorWhite,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 250,
              width: 350,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "AvenirBlack",
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'AvenirMedium',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _buildInfoCard('Gas Type', '$gasType1,\n$gasType2',
                      Icons.local_gas_station),
                  _buildInfoCard('Acceleration', '$acceleration\n0 - 100km/h',
                      Icons.speed),
                  _buildInfoCard(
                      'Capacity', '$capacity\nRecommended', Icons.people),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Put horizontally, running from left to right, place the free space evenly
                    children: [
                      Text(
                        'Rent Price',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "AvenirHeavy"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor:
                          ColorConstant.colorPrimary, // For the text color
                      backgroundColor: ColorConstant.colorWhite,
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Book Now',
                      style: TextStyle(fontSize: 20, fontFamily: "AvenirHeavy"),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value, IconData icon) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "AvenirHeavy",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "AvenirHeavy",
                  ),
                ),
              ],
            ),
            Icon(
              icon,
              color: Colors.black54,
              size: 60,
            ),
          ],
        ),
      ),
    );
  }
}
