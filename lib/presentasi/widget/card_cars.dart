import 'package:driveway_app/utils/color_constant.dart';
import 'package:flutter/material.dart';

class CardCars extends StatelessWidget {
  final String image;
  final String title;
  final String fuel;
  final String capacity;
  final String price;
  final VoidCallback onTap;
  const CardCars({
    super.key,
    required this.image,
    required this.title,
    required this.capacity,
    required this.onTap,
    required this.fuel,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile( // A fixed-height row that contains some text
                title: Text(
                  title,
                  style: TextStyle(
                      fontFamily: "AvenirHeavy",
                      fontSize: 20,
                      color: ColorConstant.colorPrimary),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                height: 150,
                width: 300,
                child: Column(
                  children: [
                    Image.asset(image),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Child widgets are arranged from left to right.
                      crossAxisAlignment: CrossAxisAlignment.center, // It determines how child widgets are aligned from top to bottom within the row.
                      children: [
                        const Icon(
                          Icons.local_gas_station,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          fuel,
                          style: const TextStyle(
                            fontFamily: "AvenirHeavy",
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: 24),
                        const Icon(
                          Icons.people,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          capacity,
                          style: const TextStyle(
                            fontFamily: "AvenirHeavy",
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 65),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
