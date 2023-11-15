import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/navigation_top.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/maps.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppPadding.screen),
              child: NavigationTop(
                callback: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Positioned(
            left: screenSize.width * 0.2,
            height: screenSize.height * 0.5,
            child: Container(
              padding: const EdgeInsets.all(48),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.primary, width: 5),
                color: AppColors.primary.withOpacity(0.28),
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.pin_drop,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
