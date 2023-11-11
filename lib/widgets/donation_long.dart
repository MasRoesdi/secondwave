import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';

class DonationLong extends StatelessWidget {
  final String assetName;

  const DonationLong(this.assetName, {super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: 80,
      width: screenSize.width * 0.9,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(211, 209, 216, 0.25),
            blurRadius: 30,
            offset: Offset(15, 15),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 64,
            width: 64,
            margin: const EdgeInsets.only(right: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                assetName,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lorem ipsum',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/address.png'),
                    const Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(130, 130, 130, 1),
                      ),
                    ),
                  ],
                ),
                const Text(
                  '3.3 Km',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(130, 130, 130, 1),
                  ),
                ),
              ],
            ),
          ),
          OpaqueButton(
            'Route',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            padX: 16,
            padY: 16,
            callback: () {},
          )
        ],
      ),
    );
  }
}
